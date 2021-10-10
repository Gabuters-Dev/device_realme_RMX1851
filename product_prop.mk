# Adb
ifeq ($(TARGET_BUILD_VARIANT),eng)
# /vendor/default.prop is force-setting ro.adb.secure=1
# Get rid of that by overriding it on eng builds
PRODUCT_PRODUCT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0
endif

# Audio
PRODUCT_PRODUCT_PROPERTIES += \
   ro.config.vc_call_vol_steps=7 \
   ro.config.media_vol_steps=25

# Bluetooth
PRODUCT_PRODUCT_PROPERTIES += \
   vendor.bluetooth.soc=cherokee

# Camera
PRODUCT_PRODUCT_PROPERTIES += \
   persist.camera.HAL3.enabled=1 \
   vendor.camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera,com.google.camera \
   vendor.camera.aux.packageblacklist=org.telegram.messenger,com.microsoft.teams,com.discord   

# Charger
PRODUCT_PRODUCT_PROPERTIES += \
   ro.charger.enable_suspend=true

# CNE
PRODUCT_PRODUCT_PROPERTIES += \
   persist.vendor.cne.feature=1

# Data Modules
PRODUCT_PRODUCT_PROPERTIES += \
    persist.vendor.data.mode=concurrent

# Display
PRODUCT_PRODUCT_PROPERTIES += \
    ro.sf.lcd_density=440

# Dex2oat
PRODUCT_PRODUCT_PROPERTIES += \
    dalvik.vm.dex2oat64.enabled=true \
    dalvik.vm.image-dex2oat-filter=quicken \
    dalvik.vm.image-dex2oat-threads=8 \
    dalvik.vm.image-dex2oat-cpu-set=0,1,2,3,4,5,6,7 \
    dalvik.vm.dex2oat-filter=quicken \
    dalvik.vm.dex2oat-threads=8 \
    dalvik.vm.dex2oat-cpu-set=0,1,2,3,4,5,6,7 \
    dalvik.vm.boot-dex2oat-threads=8 \
    dalvik.vm.boot-dex2oat-cpu-set=0,1,2,3,4,5,6,7

# FM
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.fm.use_audio_session=true

# Fwk detect
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.qti.va_aosp.support=1

# Graphics
PRODUCT_PRODUCT_PROPERTIES += \
    debug.sf.enable_hwc_vds=1 \
    debug.cpurend.vsync=false \
    debug.sf.disable_backpressure=1 \
    debug.sf.latch_unsignaled=1 \
    debug.sf.use_phase_offsets_as_durations=1 \
    debug.sf.late.sf.duration=10500000 \
    debug.sf.late.app.duration=20500000 \
    debug.sf.early.sf.duration=21000000 \
    debug.sf.early.app.duration=16500000 \
    debug.sf.earlyGl.sf.duration=13500000 \
    debug.sf.earlyGl.app.duration=21000000 \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3    

# LMKD
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.low_ram=false \
    ro.lmk.log_stats=true

# ZRAM
PRODUCT_PRODUCT_PROPERTIES += \
    ro.zram.mark_idle_delay_mins=60 \
    ro.zram.first_wb_delay_mins=180 \
    ro.zram.periodic_wb_delay_hours=24

# Media
PRODUCT_PRODUCT_PROPERTIES += \
    media.settings.xml=/system/etc/media_profiles_vendor.xml

# Netflix
PRODUCT_PRODUCT_PROPERTIES += \
    ro.netflix.bsp_rev=Q670-14477-1

# Privapp permissions whitelisting
PRODUCT_PRODUCT_PROPERTIES += \
    ro.control_privapp_permissions=log

# RIL
PRODUCT_PRODUCT_PROPERTIES += \
    ro.telephony.default_network=22,20 \
    persist.radio.add_power_save=1 \
    persist.vendor.radio.atfwd.start=false \
    persist.vendor.radio.lte_vrte_ltd=1 \
    persist.vendor.radio.cs_srv_type=1 \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.force_on_dc=true \
    persist.vendor.radio.redir_party_num=1 \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1   

# SSR
PRODUCT_PRODUCT_PROPERTIES += \
    persist.vendor.ssr.enable_ramdumps=0 \
    persist.vendor.ssr.restart_level=ALL_ENABLE

# Shutdown
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.shutdown_timeout=2

# Zygote
PRODUCT_PRODUCT_PROPERTIES += \
    persist.device_config.runtime_native.usap_pool_enabled=true

# Additional props
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.cgroup_follow.enable=true \
    persist.vendor.qti.inputopts.enable=true \
    persist.vendor.qti.inputopts.movetouchslop=0.6 \
    ro.qcom.adreno.qgl.ShaderStorageImageExtendedFormats=0

# Better Ram
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.fha_enable=true \
    ro.sys.fw.bg_apps_limit=32 \
    ro.config.dha_cached_max=16 \
    ro.config.dha_empty_max=42 \
    ro.config.dha_empty_init=32 \
    ro.config.dha_lmk_scale=0.545 \
    ro.config.dha_th_rate=2.3 \
    ro.config.sdha_apps_bg_max=64 \
    ro.config.sdha_apps_bg_min=8
