export interface ModbusPluginPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
