package com.siasun.plugins.modbus;

import android.util.Log;

public class ModbusPlugin {

    public String echo(String value) {
        Log.i("Echo", value);
        return value;
    }
}
