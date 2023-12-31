import 'package:serverman/models/droplet/droplet_size_slug_description.dart';

enum DropletSizeSlug {
  s_1vcpu_512mb_10gb(
    's-1vcpu-512mb-10gb',
    DropletSizeSlugDescription.basic,
    512,
    1,
    10,
    4.00,
    0.005950,
  ),
  s_1vcpu_1gb(
    's-1vcpu-1gb',
    DropletSizeSlugDescription.basic,
    1024,
    1,
    25,
    6.00,
    0.008930,
  ),
  s_1vcpu_1gbAmd(
    's-1vcpu-1gb-amd',
    DropletSizeSlugDescription.basicAmd,
    1024,
    1,
    25,
    7.00,
    0.010420,
  ),
  s_1vcpu_1gbIntel(
    's-1vcpu-1gb-intel',
    DropletSizeSlugDescription.basicIntel,
    1024,
    1,
    25,
    7.00,
    0.010420,
  ),
  s_1vcpu_1gb_35gbIntel(
    's-1vcpu-1gb-35gb-intel',
    DropletSizeSlugDescription.basicIntel,
    1024,
    1,
    35,
    8.00,
    0.011900,
  ),
  s_1vcpu_2gb(
    's-1vcpu-2gb',
    DropletSizeSlugDescription.basic,
    2048,
    1,
    50,
    12.00,
    0.017860,
  ),
  s_1vcpu_2gbAmd(
    's-1vcpu-2gb-amd',
    DropletSizeSlugDescription.basicAmd,
    2048,
    1,
    50,
    14.00,
    0.020830,
  ),
  s_1vcpu_2gbIntel(
    's-1vcpu-2gb-intel',
    DropletSizeSlugDescription.basicIntel,
    2048,
    1,
    50,
    14.00,
    0.020830,
  ),
  s_1vcpu_2gb_70gbIntel(
    's-1vcpu-2gb-70gb-intel',
    DropletSizeSlugDescription.basicIntel,
    2048,
    1,
    70,
    16.00,
    0.023810,
  ),
  s_2vcpu_2gb(
    's-2vcpu-2gb',
    DropletSizeSlugDescription.basic,
    2048,
    2,
    60,
    18.00,
    0.026790,
  ),
  s_2vcpu_2gbAmd(
    's-2vcpu-2gb-amd',
    DropletSizeSlugDescription.basicAmd,
    2048,
    2,
    60,
    21.00,
    0.031250,
  ),
  s_2vcpu_2gbIntel(
    's-2vcpu-2gb-intel',
    DropletSizeSlugDescription.basicIntel,
    2048,
    2,
    60,
    21.00,
    0.031250,
  ),
  s_2vcpu_2gb_90gbIntel(
    's-2vcpu-2gb-90gb-intel',
    DropletSizeSlugDescription.basicIntel,
    2048,
    2,
    90,
    24.00,
    0.035710,
  ),
  s_2vcpu_4gb(
    's-2vcpu-4gb',
    DropletSizeSlugDescription.basic,
    4096,
    2,
    80,
    24.00,
    0.035710,
  ),
  s_2vcpu_4gbAmd(
    's-2vcpu-4gb-amd',
    DropletSizeSlugDescription.basicAmd,
    4096,
    2,
    80,
    28.00,
    0.041670,
  ),
  s_2vcpu_4gbIntel(
    's-2vcpu-4gb-intel',
    DropletSizeSlugDescription.basicIntel,
    4096,
    2,
    80,
    28.00,
    0.041670,
  ),
  s_2vcpu_4gb_120gbIntel(
    's-2vcpu-4gb-120gb-intel',
    DropletSizeSlugDescription.basicIntel,
    4096,
    2,
    120,
    32.00,
    0.047620,
  ),
  s_2vcpu_8gbAmd(
    's-2vcpu-8gb-amd',
    DropletSizeSlugDescription.basicAmd,
    8192,
    2,
    100,
    42.00,
    0.062500,
  ),
  c_2(
    'c-2',
    DropletSizeSlugDescription.cpuOptimized,
    4096,
    2,
    25,
    42.00,
    0.062500,
  ),
  c2_2vcpu_4gb(
    'c2-2vcpu-4gb',
    DropletSizeSlugDescription.cpuOptimized2xSsd,
    4096,
    2,
    50,
    47.00,
    0.069940,
  ),
  s_2vcpu_8gb_160gbIntel(
    's-2vcpu-8gb-160gb-intel',
    DropletSizeSlugDescription.basicIntel,
    8192,
    2,
    160,
    48.00,
    0.071430,
  ),
  s_4vcpu_8gb(
    's-4vcpu-8gb',
    DropletSizeSlugDescription.basic,
    8192,
    4,
    160,
    48.00,
    0.071430,
  ),
  s_4vcpu_8gbAmd(
    's-4vcpu-8gb-amd',
    DropletSizeSlugDescription.basicAmd,
    8192,
    4,
    160,
    56.00,
    0.083330,
  ),
  s_4vcpu_8gbIntel(
    's-4vcpu-8gb-intel',
    DropletSizeSlugDescription.basicIntel,
    8192,
    4,
    160,
    56.00,
    0.083330,
  ),
  g_2vcpu_8gb(
    'g-2vcpu-8gb',
    DropletSizeSlugDescription.generalPurpose,
    8192,
    2,
    25,
    63.00,
    0.093750,
  ),
  s_4vcpu_8gb_240gbIntel(
    's-4vcpu-8gb-240gb-intel',
    DropletSizeSlugDescription.basicIntel,
    8192,
    4,
    240,
    64.00,
    0.095240,
  ),
  gd_2vcpu_8gb(
    'gd-2vcpu-8gb',
    DropletSizeSlugDescription.generalPurpose2xSsd,
    8192,
    2,
    50,
    68.00,
    0.101190,
  ),
  g_2vcpu_8gbIntel(
    'g-2vcpu-8gb-intel',
    DropletSizeSlugDescription.generalPurposePremiumIntel,
    8192,
    2,
    30,
    76.00,
    0.113100,
  ),
  gd_2vcpu_8gbIntel(
    'gd-2vcpu-8gb-intel',
    DropletSizeSlugDescription.generalPurposePremiumIntel2xSsd,
    8192,
    2,
    60,
    79.00,
    0.117560,
  ),
  s_4vcpu_16gbAmd(
    's-4vcpu-16gb-amd',
    DropletSizeSlugDescription.basicAmd,
    16384,
    4,
    200,
    84.00,
    0.125000,
  ),
  m_2vcpu_16gb(
    'm-2vcpu-16gb',
    DropletSizeSlugDescription.memoryOptimized,
    16384,
    2,
    50,
    84.00,
    0.125000,
  ),
  c_4(
    'c-4',
    DropletSizeSlugDescription.cpuOptimized,
    8192,
    4,
    50,
    84.00,
    0.125000,
  ),
  c2_4vcpu_8gb(
    'c2-4vcpu-8gb',
    DropletSizeSlugDescription.cpuOptimized2xSsd,
    8192,
    4,
    100,
    94.00,
    0.139880,
  ),
  s_4vcpu_16gb_320gbIntel(
    's-4vcpu-16gb-320gb-intel',
    DropletSizeSlugDescription.basicIntel,
    16384,
    4,
    320,
    96.00,
    0.142860,
  ),
  s_8vcpu_16gb(
    's-8vcpu-16gb',
    DropletSizeSlugDescription.basic,
    16384,
    8,
    320,
    96.00,
    0.142860,
  ),
  m3_2vcpu_16gb(
    'm3-2vcpu-16gb',
    DropletSizeSlugDescription.memoryOptimized3xSsd,
    16384,
    2,
    150,
    104.00,
    0.154760,
  ),
  c_4Intel(
    'c-4-intel',
    DropletSizeSlugDescription.cpuOptimizedPremiumIntel,
    8192,
    4,
    50,
    109.00,
    0.162200,
  ),
  s_8vcpu_16gbAmd(
    's-8vcpu-16gb-amd',
    DropletSizeSlugDescription.basicAmd,
    16384,
    8,
    320,
    112.00,
    0.166670,
  ),
  s_8vcpu_16gbIntel(
    's-8vcpu-16gb-intel',
    DropletSizeSlugDescription.basicIntel,
    16384,
    8,
    320,
    112.00,
    0.166670,
  ),
  c2_4vcpu_8gbIntel(
    'c2-4vcpu-8gb-intel',
    DropletSizeSlugDescription.cpuOptimizedPremiumIntel,
    8192,
    4,
    100,
    122.00,
    0.181550,
  ),
  g_4vcpu_16gb(
    'g-4vcpu-16gb',
    DropletSizeSlugDescription.generalPurpose,
    16384,
    4,
    50,
    126.00,
    0.187500,
  ),
  s_8vcpu_16gb_480gbIntel(
    's-8vcpu-16gb-480gb-intel',
    DropletSizeSlugDescription.basicIntel,
    16384,
    8,
    480,
    128.00,
    0.190480,
  ),
  so_2vcpu_16gb(
    'so-2vcpu-16gb',
    DropletSizeSlugDescription.storageOptimized,
    16384,
    2,
    300,
    131.00,
    0.194940,
  ),
  m6_2vcpu_16gb(
    'm6-2vcpu-16gb',
    DropletSizeSlugDescription.memoryOptimized6xSsd,
    16384,
    2,
    300,
    131.00,
    0.194940,
  ),
  gd_4vcpu_16gb(
    'gd-4vcpu-16gb',
    DropletSizeSlugDescription.generalPurpose2xSsd,
    16384,
    4,
    100,
    136.00,
    0.202380,
  ),
  g_4vcpu_16gbIntel(
    'g-4vcpu-16gb-intel',
    DropletSizeSlugDescription.generalPurposePremiumIntel,
    16384,
    4,
    60,
    151.00,
    0.224700,
  ),
  gd_4vcpu_16gbIntel(
    'gd-4vcpu-16gb-intel',
    DropletSizeSlugDescription.generalPurposePremiumIntel2xSsd,
    16384,
    4,
    120,
    158.00,
    0.235120,
  ),
  so1_5_2vcpu_16gb(
    'so1_5-2vcpu-16gb',
    DropletSizeSlugDescription.storageOptimized1_5xSsd,
    16384,
    2,
    450,
    163.00,
    0.242560,
  ),
  s_8vcpu_32gbAmd(
    's-8vcpu-32gb-amd',
    DropletSizeSlugDescription.basicAmd,
    32768,
    8,
    400,
    168.00,
    0.250000,
  ),
  m_4vcpu_32gb(
    'm-4vcpu-32gb',
    DropletSizeSlugDescription.memoryOptimized,
    32768,
    4,
    100,
    168.00,
    0.250000,
  ),
  c_8(
    'c-8',
    DropletSizeSlugDescription.cpuOptimized,
    16384,
    8,
    100,
    168.00,
    0.250000,
  ),
  c2_8vcpu_16gb(
    'c2-8vcpu-16gb',
    DropletSizeSlugDescription.cpuOptimized2xSsd,
    16384,
    8,
    200,
    188.00,
    0.279760,
  ),
  s_8vcpu_32gb_640gbIntel(
    's-8vcpu-32gb-640gb-intel',
    DropletSizeSlugDescription.basicIntel,
    32768,
    8,
    640,
    192.00,
    0.285710,
  ),
  m3_4vcpu_32gb(
    'm3-4vcpu-32gb',
    DropletSizeSlugDescription.memoryOptimized3xSsd,
    32768,
    4,
    300,
    208.00,
    0.309520,
  ),
  c_8Intel(
    'c-8-intel',
    DropletSizeSlugDescription.cpuOptimizedPremiumIntel,
    16384,
    8,
    100,
    218.00,
    0.324400,
  ),
  c2_8vcpu_16gbIntel(
    'c2-8vcpu-16gb-intel',
    DropletSizeSlugDescription.cpuOptimizedPremiumIntel,
    16384,
    8,
    200,
    244.00,
    0.363100,
  ),
  g_8vcpu_32gb(
    'g-8vcpu-32gb',
    DropletSizeSlugDescription.generalPurpose,
    32768,
    8,
    100,
    252.00,
    0.375000,
  ),
  so_4vcpu_32gb(
    'so-4vcpu-32gb',
    DropletSizeSlugDescription.storageOptimized,
    32768,
    4,
    600,
    262.00,
    0.389880,
  ),
  m6_4vcpu_32gb(
    'm6-4vcpu-32gb',
    DropletSizeSlugDescription.memoryOptimized6xSsd,
    32768,
    4,
    600,
    262.00,
    0.389880,
  ),
  gd_8vcpu_32gb(
    'gd-8vcpu-32gb',
    DropletSizeSlugDescription.generalPurpose2xSsd,
    32768,
    8,
    200,
    272.00,
    0.404760,
  ),
  g_8vcpu_32gbIntel(
    'g-8vcpu-32gb-intel',
    DropletSizeSlugDescription.generalPurposePremiumIntel,
    32768,
    8,
    120,
    302.00,
    0.449400,
  ),
  gd_8vcpu_32gbIntel(
    'gd-8vcpu-32gb-intel',
    DropletSizeSlugDescription.generalPurposePremiumIntel2xSsd,
    32768,
    8,
    240,
    317.00,
    0.471730,
  ),
  so1_5_4vcpu_32gb(
    'so1_5-4vcpu-32gb',
    DropletSizeSlugDescription.storageOptimized1_5xSsd,
    32768,
    4,
    900,
    326.00,
    0.485120,
  ),
  m_8vcpu_64gb(
    'm-8vcpu-64gb',
    DropletSizeSlugDescription.memoryOptimized,
    65536,
    8,
    200,
    336.00,
    0.500000,
  ),
  c_16(
    'c-16',
    DropletSizeSlugDescription.cpuOptimized,
    32768,
    16,
    200,
    336.00,
    0.500000,
  ),
  c2_16vcpu_32gb(
    'c2-16vcpu-32gb',
    DropletSizeSlugDescription.cpuOptimized2xSsd,
    32768,
    16,
    400,
    376.00,
    0.559520,
  ),
  m3_8vcpu_64gb(
    'm3-8vcpu-64gb',
    DropletSizeSlugDescription.memoryOptimized3xSsd,
    65536,
    8,
    600,
    416.00,
    0.619050,
  ),
  c_16Intel(
    'c-16-intel',
    DropletSizeSlugDescription.cpuOptimizedPremiumIntel,
    32768,
    16,
    200,
    437.00,
    0.650300,
  ),
  c2_16vcpu_32gbIntel(
    'c2-16vcpu-32gb-intel',
    DropletSizeSlugDescription.cpuOptimizedPremiumIntel,
    32768,
    16,
    400,
    489.00,
    0.727680,
  ),
  g_16vcpu_64gb(
    'g-16vcpu-64gb',
    DropletSizeSlugDescription.generalPurpose,
    65536,
    16,
    200,
    504.00,
    0.750000,
  ),
  so_8vcpu_64gb(
    'so-8vcpu-64gb',
    DropletSizeSlugDescription.storageOptimized,
    65536,
    8,
    1200,
    524.00,
    0.779760,
  ),
  m6_8vcpu_64gb(
    'm6-8vcpu-64gb',
    DropletSizeSlugDescription.memoryOptimized6xSsd,
    65536,
    8,
    1200,
    524.00,
    0.779760,
  ),
  gd_16vcpu_64gb(
    'gd-16vcpu-64gb',
    DropletSizeSlugDescription.generalPurpose2xSsd,
    65536,
    16,
    400,
    544.00,
    0.809520,
  ),
  g_16vcpu_64gbIntel(
    'g-16vcpu-64gb-intel',
    DropletSizeSlugDescription.generalPurposePremiumIntel,
    65536,
    16,
    240,
    605.00,
    0.900300,
  ),
  gd_16vcpu_64gbIntel(
    'gd-16vcpu-64gb-intel',
    DropletSizeSlugDescription.generalPurposePremiumIntel2xSsd,
    65536,
    16,
    480,
    634.00,
    0.943450,
  ),
  so1_5_8vcpu_64gb(
    'so1_5-8vcpu-64gb',
    DropletSizeSlugDescription.storageOptimized1_5xSsd,
    65536,
    8,
    1800,
    652.00,
    0.970240,
  ),
  m_16vcpu_128gb(
    'm-16vcpu-128gb',
    DropletSizeSlugDescription.memoryOptimized,
    131072,
    16,
    400,
    672.00,
    1.000000,
  ),
  c_32(
    'c-32',
    DropletSizeSlugDescription.cpuOptimized,
    65536,
    32,
    400,
    672.00,
    1.000000,
  ),
  c2_32vcpu_64gb(
    'c2-32vcpu-64gb',
    DropletSizeSlugDescription.cpuOptimized2xSsd,
    65536,
    32,
    800,
    752.00,
    1.119050,
  ),
  m3_16vcpu_128gb(
    'm3-16vcpu-128gb',
    DropletSizeSlugDescription.memoryOptimized3xSsd,
    131072,
    16,
    1200,
    832.00,
    1.238100,
  ),
  c_32Intel(
    'c-32-intel',
    DropletSizeSlugDescription.cpuOptimizedPremiumIntel,
    65536,
    32,
    400,
    874.00,
    1.300600,
  ),
  c2_32vcpu_64gbIntel(
    'c2-32vcpu-64gb-intel',
    DropletSizeSlugDescription.cpuOptimizedPremiumIntel,
    65536,
    32,
    800,
    978.00,
    1.455360,
  ),
  c_48(
    'c-48',
    DropletSizeSlugDescription.cpuOptimized,
    98304,
    48,
    600,
    1008.00,
    1.500000,
  ),
  m_24vcpu_192gb(
    'm-24vcpu-192gb',
    DropletSizeSlugDescription.memoryOptimized,
    196608,
    24,
    600,
    1008.00,
    1.500000,
  ),
  g_32vcpu_128gb(
    'g-32vcpu-128gb',
    DropletSizeSlugDescription.generalPurpose,
    131072,
    32,
    400,
    1008.00,
    1.500000,
  ),
  so_16vcpu_128gb(
    'so-16vcpu-128gb',
    DropletSizeSlugDescription.storageOptimized,
    131072,
    16,
    2400,
    1048.00,
    1.559520,
  ),
  m6_16vcpu_128gb(
    'm6-16vcpu-128gb',
    DropletSizeSlugDescription.memoryOptimized6xSsd,
    131072,
    16,
    2400,
    1048.00,
    1.559520,
  ),
  gd_32vcpu_128gb(
    'gd-32vcpu-128gb',
    DropletSizeSlugDescription.generalPurpose2xSsd,
    131072,
    32,
    800,
    1088.00,
    1.619050,
  ),
  c2_48vcpu_96gb(
    'c2-48vcpu-96gb',
    DropletSizeSlugDescription.cpuOptimized2xSsd,
    98304,
    48,
    1200,
    1128.00,
    1.678570,
  ),
  g_32vcpu_128gbIntel(
    'g-32vcpu-128gb-intel',
    DropletSizeSlugDescription.generalPurposePremiumIntel,
    131072,
    32,
    480,
    1210.00,
    1.800600,
  ),
  m3_24vcpu_192gb(
    'm3-24vcpu-192gb',
    DropletSizeSlugDescription.memoryOptimized3xSsd,
    196608,
    24,
    1800,
    1248.00,
    1.857140,
  ),
  g_40vcpu_160gb(
    'g-40vcpu-160gb',
    DropletSizeSlugDescription.generalPurpose,
    163840,
    40,
    500,
    1260.00,
    1.875000,
  ),
  gd_32vcpu_128gbIntel(
    'gd-32vcpu-128gb-intel',
    DropletSizeSlugDescription.generalPurposePremiumIntel2xSsd,
    131072,
    32,
    960,
    1268.00,
    1.886900,
  ),
  so1_5_24vcpu_192gb(
    'so1_5-24vcpu-192gb',
    DropletSizeSlugDescription.storageOptimized1_5xSsd,
    196608,
    24,
    5400,
    1304.00,
    1.940480,
  ),
  so_32vcpu_256gb(
    'so-32vcpu-256gb',
    DropletSizeSlugDescription.storageOptimized,
    262144,
    32,
    4800,
    2096.00,
    3.119050,
  ),
  m6_32vcpu_256gb(
    'm6-32vcpu-256gb',
    DropletSizeSlugDescription.memoryOptimized6xSsd,
    262144,
    32,
    4800,
    2096.00,
    3.119050,
  ),
  so1_5_32vcpu_256gb(
      'so1_5-32vcpu-256gb',
      DropletSizeSlugDescription.storageOptimized1_5xSsd,
      262144,
      32,
      7200,
      2608.00,
      3.880950);

  final String slugString;
  final DropletSizeSlugDescription description;
  final int memory;
  final int vcpus;
  final int disk;
  final double priceMonthly;
  final double priceHourly;

  const DropletSizeSlug(
    this.slugString,
    this.description,
    this.memory,
    this.vcpus,
    this.disk,
    this.priceMonthly,
    this.priceHourly,
  );

  static DropletSizeSlug fromString(String slug) {
    return DropletSizeSlug.values.firstWhere(
      (element) => element.slugString == slug,
    );
  }

  @override
  String toString() {
    return slugString;
  }
}
