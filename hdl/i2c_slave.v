module i2c_slave (
    inout sda,
    input scl
    );
    
localparam addr = 7'b1101011;

localparam IDLE_STATE = 0;
localparam START_STATE = 1;
localparam ADDR_STATE = 2;
localparam READ_ACK = 3;
localparam WRITE_DATA = 4;
localparam WRITE_ACK = 5;
localparam READ_DATA = 6;
localparam WRITE_ACK2 = 7;
localparam STOP_STATE = 8;

reg[7:0] data_in;
reg[7:0] data_out;

reg[7:0] counter;
reg write_enable;
reg en;
reg sda_out;
reg[2:0] state;
reg[7:0] save_addr;

assign sda = (write_enable == 0) ? sda_out : 'bz;
always @(negedge scl) begin
    case(state) 
        IDLE_STATE : begin
            if (sda_out == 0) begin
                state = START_STATE;
            end
        end
        
        START_STATE : begin
            counter  = 7;
            state = ADDR_STATE;
        end
        
        ADDR_STATE : begin
            save_addr[counter] = sda_out;
            if (counter == 0) begin
                state = WRITE_ACK;
            end
            else counter = counter - 1;
            
        end
        
        WRITE_ACK : begin
            counter = 7;
            if (save_addr[7:1] == addr) begin
                if (save_addr[0] == 0) begin
                    state = READ_DATA;
                end
                else state = WRITE_DATA;
            end
        end
        
        WRITE_DATA : begin
            if (counter == 0) begin
                state = READ_ACK;
            end
            else begin
                counter = counter - 1;
            end
        end
        READ_DATA : begin
            data_in[counter] = sda_out;
            if (counter == 0) begin
                state = WRITE_ACK2;
            end
            else begin
                counter = counter - 1;
            end
        end
        READ_ACK : begin
            if ((sda_out==0) && (en == 1)) begin
                state = IDLE_STATE;
            end
            else state = STOP_STATE;
        end
    
        WRITE_ACK : begin
            counter = 7;
            sda_out = 0;
            state = STOP_STATE;
        end
        
        STOP_STATE : begin
            state = IDLE_STATE;
        end
        
        
    endcase
    
end


always @(posedge scl) begin
    case(state) 
        START_STATE : begin
            write_enable = 0;
        end
        
        WRITE_ACK : begin
            if (addr == save_addr[7:1]) begin
                write_enable = 1;
                sda_out = 0;
            end
        end
        
        WRITE_DATA : begin
            write_enable = 1;
            sda_out = data_out[counter];
        end
        
        WRITE_ACK2 : begin
            write_enable = 1;
            sda_out = 0;
        end
        
        READ_ACK : begin
            write_enable = 0;
        end
        
        READ_DATA : begin
            write_enable = 0;
        end
        
        STOP_STATE : begin
            write_enable = 0;
        end
    endcase
end

endmodule
        