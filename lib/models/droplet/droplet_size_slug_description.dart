enum DropletSizeSlugDescription {
  basic('Basic'),
  basicAmd('Basic AMD'),
  basicIntel('Basic Intel'),
  generalPurpose('General Purpose'),
  generalPurpose2xSsd('General Purpose 2x SSD'),
  generalPurposePremiumIntel('General Purpose — Premium Intel'),
  generalPurposePremiumIntel2xSsd('General Purpose — Premium Intel 2x SSD'),
  cpuOptimized('CPU-Optimized'),
  cpuOptimized2xSsd('CPU-Optimized 2x SSD'),
  cpuOptimizedPremiumIntel('CPU-Optimized — Premium Intel'),
  cpuOptimizedPremiumIntel2xSsd('CPU-Optimized — Premium Intel 2x SSD'),
  memoryOptimized('Memory-Optimized'),
  memoryOptimized3xSsd('Memory-Optimized 3x SSD'),
  memoryOptimized6xSsd('Memory-Optimized 6x SSD'),
  storageOptimized('Storage-Optimized'),
  storageOptimized1_5xSsd('Storage-Optimized 1.5x SSD');

  final String description;

  const DropletSizeSlugDescription(
    this.description,
  );
}
