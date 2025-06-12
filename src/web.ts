import { WebPlugin } from '@capacitor/core';

import type { ModbusPluginPlugin } from './definitions';

export class ModbusPluginWeb extends WebPlugin implements ModbusPluginPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
