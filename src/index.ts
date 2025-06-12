import { registerPlugin } from '@capacitor/core';

import type { ModbusPluginPlugin } from './definitions';

const ModbusPlugin = registerPlugin<ModbusPluginPlugin>('ModbusPlugin', {
  web: () => import('./web').then((m) => new m.ModbusPluginWeb()),
});

export * from './definitions';
export { ModbusPlugin };
