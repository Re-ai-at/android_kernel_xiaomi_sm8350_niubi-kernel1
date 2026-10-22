## Xiaomi SM8350 Device MiYume HoshinoNeko Kernel ##

> **上游仓库**：[MiYume0721/android_kernel_xiaomi_sm8350_miyume](https://github.com/MiYume0721/android_kernel_xiaomi_sm8350_miyume)（HoshinoNeko 内核，ReSukiSU + SuSFS）
>
> **Android 14 适配**（本仓库在 Android 14 / HyperOS 2.0.7.0.UKACNXM 上的改动）：
> - vermagic 伪装：内核版本显示为 `5.4.274-qgki-g4dfe63e0666f`（Makefile SUBLEVEL=274 + star_defconfig
>   CONFIG_LOCALVERSION="-qgki-g4dfe63e0666f" + `.scmversion`），匹配小米原厂 vendor 闭源驱动要求，
>   消除"低于 Android 15 供应商报错/驱动拒载"
> - vbmeta：使用 **NONE 算法（无签名）** vbmeta（保留全部原厂校验描述符、更新 boot hash），
>   开机不再提示"设备内部出现了问题，请联系你的设备制造商"

## 支持设备 ##
- Xiaomi 11 (venus)
- Xiaomi 11 Pro (mars)
- Xiaomi 11 Ultra (star)
- Redmi K40 Pro(+) (haydn)

## 内核特性 ##
- 版本：5.4.302（Android 14 适配版伪装为 5.4.274-qgki-g4dfe63e0666f）
- ReSukiSU v4.2.0-rc1 + SuSFS v2.1.0
- Backport BPF (Kernel5.10)
- 启用 f2fs 文件系统优化
- 支持 HyperOS 4.0 Android 17
- 测试 Miui Android 13 及更高正常

## 需要注意 ##
- 原版低于 Android 15 开机会供应商报错（本仓库已按 Android 14 适配，见文首说明）
- **Venus** 使用 `venus_defconfig`
- **Star/Mars** 使用 `star_defconfig`
- **Haydn** 使用 `haydn_defconfig`

## 工具配置 ##
- Clang 18.1.8 & LLD 18.1.8

## 开始编译 ##
bash build_device.sh (填设备代号, 不填默认venus)
