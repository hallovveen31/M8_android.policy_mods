.class Lcom/android/internal/policy/impl/GlobalActions;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/GlobalActions$CloseDialogReceiver;,
        Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;,
        Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;,
        Lcom/android/internal/policy/impl/GlobalActions$SilentModeToggleAction;,
        Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;,
        Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;,
        Lcom/android/internal/policy/impl/GlobalActions$Action;,
        Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    }
.end annotation


# static fields
.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final FLASHLIGHT_ACTIVITY_NAME:Ljava/lang/String; = "com.htc.flashlight.FlashlightActivity"

.field public static final FLASHLIGHT_MODE_HIDE:I = 0x0

.field public static final FLASHLIGHT_MODE_SHOW:I = 0x1

.field public static final FLASHLIGHT_MODE_SHOWONLY:I = 0x2

.field private static final FLASHLIGHT_PACKAGE_NAME:Ljava/lang/String; = "com.htc.flashlight"

.field private static IMS_REGISTRATION:Ljava/lang/String; = null

.field private static IMS_REG_STATUS:Ljava/lang/String; = null

.field private static final INTENT_ACTUAL_SCREEN_OFF:Ljava/lang/String; = "com.htc.server.HtcPMSExtension.ACTUAL_SCREEN_OFF"

.field private static final IPUtilesClasssName:Ljava/lang/String; = "com.movial.ipphone.IPUtils"

.field private static final KDDI_SKU_ID:I = 0x1f

.field private static final KIDMODE_DIALOG_SHOW:Ljava/lang/String; = "kidmode_dg_show"

.field private static final KID_MODE_ACTIVITY_NAME:Ljava/lang/String; = "com.zoodles.kidmode.activity.LauncherActivity"

.field private static final KID_MODE_EXIT_APP_ACTIVITY:Ljava/lang/String; = "com.zoodles.kidmode.activity.kid.exit.ExitAppActivity"

.field private static final KID_MODE_PACKAGE_NAME:Ljava/lang/String; = "com.zoodles.kidmode"

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_DISMISS_FLASHLIGHT:I = 0x182ae

.field private static final MESSAGE_NOTIFY:I = 0x3

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final TAG:Ljava/lang/String; = "GlobalActions"

.field private static final VERIZON_WWE_SKU_ID:I = 0xd


# instance fields
.field private imsRegistered:Z

.field private mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBlockObserver:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDeviceSkuID:I

.field private mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mFlashlightMode:I

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mHasVibrator:Z

.field private mHideKidMode:Z

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/GlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field private mKidModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mKidModeState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

.field private mMobileNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

.field private final mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private final mShowSilentToggle:Z

.field private mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$Action;

.field private mSimReady:Z

.field private mSkipTransition:Z

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    const-string v0, ""

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REGISTRATION:Ljava/lang/String;

    .line 199
    const-string v0, ""

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REG_STATUS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 10
    .parameter "context"
    .parameter "windowManagerFuncs"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHideKidMode:Z

    .line 180
    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mServiceState:Landroid/telephony/ServiceState;

    .line 181
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSkipTransition:Z

    .line 184
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBlockObserver:Z

    .line 187
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    .line 188
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    .line 189
    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 190
    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKidModeState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 192
    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMobileNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 193
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSimReady:Z

    .line 195
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    .line 200
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->imsRegistered:Z

    .line 212
    iput v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mFlashlightMode:I

    .line 1414
    new-instance v5, Lcom/android/internal/policy/impl/GlobalActions$10;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/GlobalActions$10;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1466
    new-instance v5, Lcom/android/internal/policy/impl/GlobalActions$11;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/GlobalActions$11;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1515
    new-instance v5, Lcom/android/internal/policy/impl/GlobalActions$12;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/GlobalActions$12;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 1524
    new-instance v5, Lcom/android/internal/policy/impl/GlobalActions$13;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v8}, Lcom/android/internal/policy/impl/GlobalActions$13;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 1540
    new-instance v5, Lcom/android/internal/policy/impl/GlobalActions$14;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/GlobalActions$14;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    .line 223
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    .line 224
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 225
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 226
    const-string v5, "dreams"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 230
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 231
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v5, "com.htc.server.HtcPMSExtension.ACTUAL_SCREEN_OFF"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    const-string v5, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    const-string v5, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    const-string v5, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 242
    :try_start_0
    const-string v5, "com.movial.ipphone.IPUtils"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v8, "IMS_REGISTRATION"

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REGISTRATION:Ljava/lang/String;

    .line 243
    const-string v5, "com.movial.ipphone.IPUtils"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v8, "IMS_REG_STATUS"

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REG_STATUS:Ljava/lang/String;

    .line 244
    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REGISTRATION:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REG_STATUS:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 245
    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REGISTRATION:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 255
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 257
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v3, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 260
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 263
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 265
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    .line 266
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "airplane_mode_on"

    invoke-static {v8}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v6, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 269
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v8, "vibrator"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .line 270
    .local v4, vibrator:Landroid/os/Vibrator;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasVibrator:Z

    .line 272
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x1110056

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_1

    move v7, v6

    :cond_1
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mShowSilentToggle:Z

    .line 276
    const-string v5, "ro.kidmode.enable"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_2

    .line 277
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHideKidMode:Z

    .line 278
    const-string v5, "GlobalActions"

    const-string v6, "[KID] Not support"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_2
    return-void

    .line 246
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v3           #telephonyManager:Landroid/telephony/TelephonyManager;
    .end local v4           #vibrator:Landroid/os/Vibrator;
    :catch_0
    move-exception v1

    .line 247
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v3       #telephonyManager:Landroid/telephony/TelephonyManager;
    .restart local v4       #vibrator:Landroid/os/Vibrator;
    :cond_3
    move v5, v7

    .line 270
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/GlobalActions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/GlobalActions;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/internal/policy/impl/GlobalActions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSimReady:Z

    return p1
.end method

.method static synthetic access$1900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REGISTRATION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REG_STATUS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/internal/policy/impl/GlobalActions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBlockObserver:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/android/internal/policy/impl/GlobalActions;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;)Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->refreshSilentMode()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->handleShow()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/GlobalActions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mFlashlightMode:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/GlobalActions;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->enter_leave_KidMode(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/GlobalActions;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSkipTransition:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->imsRegistered:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/GlobalActions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->imsRegistered:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/GlobalActions;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->confirmKidMode(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->startFlashlightActivity()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/GlobalActions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceSkuID:I

    return v0
.end method

.method private addUsersToMenu(Ljava/util/ArrayList;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/GlobalActions$Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/GlobalActions$Action;>;"
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 738
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v9

    .line 740
    .local v9, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v10, :cond_6

    .line 741
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 742
    .local v6, currentUser:Landroid/content/pm/UserInfo;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 743
    .local v5, user:Landroid/content/pm/UserInfo;
    if-nez v6, :cond_1

    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_0

    move v8, v10

    .line 745
    .local v8, isCurrentUser:Z
    :goto_1
    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 747
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    :goto_2
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$9;

    const v2, 0x1080338

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v8, :cond_5

    const-string v1, " \u2714"

    :goto_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/GlobalActions$9;-><init>(Lcom/android/internal/policy/impl/GlobalActions;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    .line 767
    .local v0, switchToUser:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #switchToUser:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .end local v8           #isCurrentUser:Z
    :cond_0
    move v8, v11

    .line 743
    goto :goto_1

    :cond_1
    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    iget v2, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v2, :cond_2

    move v8, v10

    goto :goto_1

    :cond_2
    move v8, v11

    goto :goto_1

    .line 745
    .restart local v8       #isCurrentUser:Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 747
    .restart local v3       #icon:Landroid/graphics/drawable/Drawable;
    :cond_4
    const-string v1, "Primary"

    goto :goto_3

    :cond_5
    const-string v1, ""

    goto :goto_4

    .line 770
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .end local v5           #user:Landroid/content/pm/UserInfo;
    .end local v6           #currentUser:Landroid/content/pm/UserInfo;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #isCurrentUser:Z
    :cond_6
    return-void
.end method

.method private awakenIfNecessary()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_0

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 319
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private buildHomeIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 2008
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2009
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2010
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2011
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2012
    return-object v0
.end method

.method private canShowVZWAirplaneMode(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 2084
    const/4 v0, 0x1

    .line 2085
    .local v0, showAirplane:Z
    iget v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceSkuID:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 2087
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ota_required"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2088
    .local v1, vzwActivateState:I
    const-string v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get activate state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    if-eqz v1, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 2091
    :cond_0
    const/4 v0, 0x1

    .line 2096
    .end local v1           #vzwActivateState:I
    :cond_1
    :goto_0
    return v0

    .line 2093
    .restart local v1       #vzwActivateState:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 7
    .parameter "on"

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1599
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    if-eqz p1, :cond_4

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1604
    const-string v1, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AirplaneMode] changeAirplaneModeSystemSetting, set AirplaneMode to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_2

    .line 1609
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-ne v1, v6, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eq v1, v6, :cond_5

    if-nez p1, :cond_5

    .line 1610
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSkipTransition:Z

    .line 1614
    :goto_1
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AirplaneMode] mSkipTransition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSkipTransition:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1618
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1619
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1620
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1621
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    if-nez v1, :cond_3

    .line 1622
    if-eqz p1, :cond_6

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_2
    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 1624
    :cond_3
    return-void

    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    move v1, v3

    .line 1599
    goto :goto_0

    .line 1612
    :cond_5
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSkipTransition:Z

    goto :goto_1

    .line 1622
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_6
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_2
.end method

.method private confirmKidMode(Z)V
    .locals 19
    .parameter "on"

    .prologue
    .line 1873
    const/4 v13, 0x0

    .line 1875
    .local v13, show_kidmode_dialog:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "kidmode_dg_show"

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    if-lez v16, :cond_1

    const/4 v13, 0x1

    .line 1881
    :goto_0
    sget-boolean v16, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v16, :cond_0

    const-string v16, "GlobalActions"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[KID] show_kidmode_dialog = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    :cond_0
    if-eqz p1, :cond_2

    if-eqz v13, :cond_2

    .line 1884
    const v10, 0x3070090

    .line 1885
    .local v10, idTitle:I
    const v8, 0x3070095

    .line 1886
    .local v8, idMessage:I
    const v7, 0x3070096

    .line 1887
    .local v7, idDontShow:I
    const v9, 0x104000a

    .line 1889
    .local v9, idPositive:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 1890
    .local v11, inflater:Landroid/view/LayoutInflater;
    const v16, 0x303000d

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 1892
    .local v12, layout:Landroid/view/View;
    const v16, 0x311001e

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1893
    .local v15, warning_text:Landroid/widget/TextView;
    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1895
    const v16, 0x311001f

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/HtcCheckBox;

    .line 1897
    .local v14, warning_check:Lcom/htc/widget/HtcCheckBox;
    const v16, 0x3110020

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1898
    .local v5, dont_show_text:Landroid/widget/TextView;
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1900
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$CloseDialogReceiver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/GlobalActions$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 1901
    .local v3, closer:Lcom/android/internal/policy/impl/GlobalActions$CloseDialogReceiver;
    new-instance v16, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v16

    new-instance v17, Lcom/android/internal/policy/impl/GlobalActions$15;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v14}, Lcom/android/internal/policy/impl/GlobalActions$15;-><init>(Lcom/android/internal/policy/impl/GlobalActions;ZLcom/htc/widget/HtcCheckBox;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    .line 1913
    .local v4, dialog:Lcom/htc/widget/HtcAlertDialog;
    iput-object v4, v3, Lcom/android/internal/policy/impl/GlobalActions$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 1914
    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1915
    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x7d9

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->setType(I)V

    .line 1916
    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 1920
    .end local v3           #closer:Lcom/android/internal/policy/impl/GlobalActions$CloseDialogReceiver;
    .end local v4           #dialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v5           #dont_show_text:Landroid/widget/TextView;
    .end local v7           #idDontShow:I
    .end local v8           #idMessage:I
    .end local v9           #idPositive:I
    .end local v10           #idTitle:I
    .end local v11           #inflater:Landroid/view/LayoutInflater;
    .end local v12           #layout:Landroid/view/View;
    .end local v14           #warning_check:Lcom/htc/widget/HtcCheckBox;
    .end local v15           #warning_text:Landroid/widget/TextView;
    :goto_1
    return-void

    .line 1875
    :cond_1
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1876
    :catch_0
    move-exception v6

    .line 1877
    .local v6, e:Ljava/lang/Exception;
    const-string v16, "GlobalActions"

    const-string v17, "[KID] Error getting KIDMODE_DIALOG_SHOW"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1878
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1918
    .end local v6           #e:Ljava/lang/Exception;
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/GlobalActions;->enter_leave_KidMode(Z)V

    goto :goto_1
.end method

.method private createDialog()Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    .locals 22

    .prologue
    .line 344
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mHasVibrator:Z

    if-nez v3, :cond_6

    .line 345
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$SilentModeToggleAction;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeToggleAction;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$Action;

    .line 349
    :goto_0
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$1;

    const v5, 0x3020043

    const v6, 0x3020043

    const v7, 0x10400d0

    const v8, 0x10400d1

    const v9, 0x10400d2

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/policy/impl/GlobalActions$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIIIZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    .line 404
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->onAirplaneModeChanged()V

    .line 407
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "icon_launcher_kidmode"

    const-string v6, "drawable"

    const-string v7, "com.htc.framework"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 408
    .local v5, kidModeIcon:I
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$2;

    const v7, 0x3070090

    const v8, 0x3070091

    const v9, 0x3070092

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move v6, v5

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/policy/impl/GlobalActions$2;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIIIZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mKidModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    .line 436
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    .line 438
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->isSense2Mode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 440
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "powerOptions_power_off_status"

    const-string v6, "string"

    const-string v7, "com.htc.framework"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 441
    .local v17, powerOffStatus:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "powerOptions_restart"

    const-string v6, "string"

    const-string v7, "com.htc.framework"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    .line 442
    .local v19, restartText:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "powerOptions_restart_status"

    const-string v6, "string"

    const-string v7, "com.htc.framework"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 446
    .local v18, restartStatus:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "powerOptions_flashlight_mode"

    const-string v6, "string"

    const-string v7, "com.htc.framework"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 447
    .local v15, flashlightTitle:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "powerOptions_flashlight_mode_launch"

    const-string v6, "string"

    const-string v7, "com.htc.framework"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 449
    .local v14, flashlightStatus:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mFlashlightMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$3;

    const v6, 0x3020047

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6, v15, v14}, Lcom/android/internal/policy/impl/GlobalActions$3;-><init>(Lcom/android/internal/policy/impl/GlobalActions;III)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    .end local v14           #flashlightStatus:I
    .end local v15           #flashlightTitle:I
    .end local v17           #powerOffStatus:I
    .end local v18           #restartStatus:I
    .end local v19           #restartText:I
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bugreport_in_power_menu"

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->isCurrentUserOwner()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 597
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$7;

    const v6, 0x3020044

    const v7, 0x10400ca

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6, v7}, Lcom/android/internal/policy/impl/GlobalActions$7;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    :cond_1
    const-string v3, "fw.power_user_switcher"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 652
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/GlobalActions;->addUsersToMenu(Ljava/util/ArrayList;)V

    .line 655
    :cond_2
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    .line 673
    new-instance v16, Lcom/htc/app/HtcAlertController$AlertParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Lcom/htc/app/HtcAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 674
    .local v16, params:Lcom/htc/app/HtcAlertController$AlertParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 675
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 679
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v11

    .line 680
    .local v11, custManager:Lcom/htc/customization/HtcCustomizationManager;
    const-string v3, "Android_Core_Framework"

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {v11, v3, v4, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v12

    .line 681
    .local v12, custReader:Lcom/htc/customization/HtcCustomizationReader;
    const-string v3, "globalaction_enable_cancel_button"

    const/4 v4, 0x0

    invoke-interface {v12, v3, v4}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 682
    .local v21, showCancelBtn:Z
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_3

    const-string v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showCancelBtn = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_3
    if-eqz v21, :cond_4

    .line 684
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x104

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 685
    const/4 v3, 0x0

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 689
    :cond_4
    new-instance v13, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-direct {v13, v3, v0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/htc/app/HtcAlertController$AlertParams;)V

    .line 690
    .local v13, dialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 703
    invoke-virtual {v13}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 704
    invoke-virtual {v13}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 705
    invoke-virtual {v13}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/internal/policy/impl/GlobalActions$8;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 713
    invoke-virtual {v13}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 715
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 717
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->isSense2Mode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 718
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 721
    :cond_5
    return-object v13

    .line 347
    .end local v5           #kidModeIcon:I
    .end local v11           #custManager:Lcom/htc/customization/HtcCustomizationManager;
    .end local v12           #custReader:Lcom/htc/customization/HtcCustomizationReader;
    .end local v13           #dialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    .end local v16           #params:Lcom/htc/app/HtcAlertController$AlertParams;
    .end local v21           #showCancelBtn:Z
    :cond_6
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, v4, v6, v7}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$Action;

    goto/16 :goto_0

    .line 476
    .restart local v5       #kidModeIcon:I
    .restart local v14       #flashlightStatus:I
    .restart local v15       #flashlightTitle:I
    .restart local v17       #powerOffStatus:I
    .restart local v18       #restartStatus:I
    .restart local v19       #restartText:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$4;

    const v6, 0x3020056

    const v7, 0x10400c9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v4, v0, v6, v7, v1}, Lcom/android/internal/policy/impl/GlobalActions$4;-><init>(Lcom/android/internal/policy/impl/GlobalActions;III)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    const/16 v20, 0x1

    .line 526
    .local v20, showAirplaneItem:Z
    const-string v3, "htc_is_demo"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_b

    .line 527
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/GlobalActions;->canShowVZWAirplaneMode(Landroid/content/Context;)Z

    move-result v20

    .line 533
    :goto_2
    if-eqz v20, :cond_8

    .line 534
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/GlobalActions;->supportKidModeApp(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/GlobalActions;->isExtremePowerSavingMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 540
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_9

    const-string v3, "GlobalActions"

    const-string v4, "[KID] device supports KidMode feature"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mKidModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$5;

    const v6, 0x3020059

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v4, v0, v6, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$5;-><init>(Lcom/android/internal/policy/impl/GlobalActions;III)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mFlashlightMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 567
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$6;

    const v6, 0x3020047

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6, v15, v14}, Lcom/android/internal/policy/impl/GlobalActions$6;-><init>(Lcom/android/internal/policy/impl/GlobalActions;III)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 529
    :cond_b
    const/16 v20, 0x0

    .line 530
    const-string v3, "GlobalActions"

    const-string v4, "[AIRPLANE] DemoFLO ON, hide Airplane Mode"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private enter_leave_KidMode(Z)V
    .locals 6
    .parameter "enter"

    .prologue
    .line 1923
    const/4 v1, 0x0

    .line 1925
    .local v1, kid:Landroid/content/Intent;
    if-eqz p1, :cond_1

    .line 1927
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1928
    .end local v1           #kid:Landroid/content/Intent;
    .local v2, kid:Landroid/content/Intent;
    :try_start_1
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1929
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.zoodles.kidmode"

    const-string v5, "com.zoodles.kidmode.activity.LauncherActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1930
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1931
    const/high16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1932
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    const-string v3, "GlobalActions"

    const-string v4, "[KID] Starting KID_MODE_ACTIVITY"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v1, v2

    .line 1949
    .end local v2           #kid:Landroid/content/Intent;
    .restart local v1       #kid:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1934
    :catch_0
    move-exception v0

    .line 1935
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    const-string v3, "GlobalActions"

    const-string v4, "Error launching KID_MODE_ACTIVITY"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1939
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1940
    .end local v1           #kid:Landroid/content/Intent;
    .restart local v2       #kid:Landroid/content/Intent;
    :try_start_3
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.zoodles.kidmode"

    const-string v5, "com.zoodles.kidmode.activity.kid.exit.ExitAppActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1941
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1942
    const/high16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1943
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_2

    const-string v3, "GlobalActions"

    const-string v4, "[KID] Starting KID_MODE_EXIT_APP_ACTIVIT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v2

    .line 1947
    .end local v2           #kid:Landroid/content/Intent;
    .restart local v1       #kid:Landroid/content/Intent;
    goto :goto_0

    .line 1945
    :catch_1
    move-exception v0

    .line 1946
    .restart local v0       #e:Ljava/lang/Exception;
    :goto_2
    const-string v3, "GlobalActions"

    const-string v4, "Error launching KID_MODE_EXIT_APP_ACTIVIT"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1945
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #kid:Landroid/content/Intent;
    .restart local v2       #kid:Landroid/content/Intent;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2           #kid:Landroid/content/Intent;
    .restart local v1       #kid:Landroid/content/Intent;
    goto :goto_2

    .line 1934
    .end local v1           #kid:Landroid/content/Intent;
    .restart local v2       #kid:Landroid/content/Intent;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2           #kid:Landroid/content/Intent;
    .restart local v1       #kid:Landroid/content/Intent;
    goto :goto_1
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 2

    .prologue
    .line 726
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 728
    :goto_0
    return-object v1

    .line 727
    :catch_0
    move-exception v0

    .line 728
    .local v0, re:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleShow()V
    .locals 3

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->awakenIfNecessary()V

    .line 327
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->createDialog()Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    .line 328
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->prepareDialog()V

    .line 330
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 331
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    const-string v1, "GlobalActions"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 333
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->show()V

    .line 334
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 335
    return-void
.end method

.method private isCurrentUserOwner()Z
    .locals 2

    .prologue
    .line 733
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 734
    .local v0, currentUser:Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isExtremePowerSavingMode(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 2046
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_extreme_power_saver_state"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2048
    .local v0, extremePowerSavingState:I
    const-string v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "htc_extreme_power_saver_state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isKidModeChildLockActive()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1995
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1996
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->buildHomeIntent()Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1997
    .local v1, info:Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_1

    .line 2004
    :cond_0
    :goto_0
    return v3

    .line 2000
    :cond_1
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2001
    .local v0, appPackageName:Ljava/lang/CharSequence;
    const-string v4, "com.zoodles.kidmode"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2002
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private isSense2Mode()Z
    .locals 8

    .prologue
    .line 1855
    const/4 v0, 0x0

    .line 1858
    .local v0, bRet:Z
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v1

    .line 1859
    .local v1, custManager:Lcom/htc/customization/HtcCustomizationManager;
    const-string v5, "System"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v6, v7}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    .line 1860
    .local v2, custReader:Lcom/htc/customization/HtcCustomizationReader;
    const-string v5, "sense_version"

    const-string v6, "5.0"

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1861
    .local v3, senseV:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 1863
    .local v4, version:F
    const v5, 0x3fcccccd

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_0

    .line 1864
    const/4 v0, 0x1

    .line 1866
    :cond_0
    return v0
.end method

.method private onAirplaneModeChanged()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1580
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBlockObserver:Z

    if-eqz v2, :cond_0

    .line 1582
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    if-eqz v2, :cond_0

    .line 1593
    :goto_0
    return-void

    .line 1584
    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBlockObserver:Z

    .line 1587
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 1591
    .local v0, airplaneModeOn:Z
    :goto_1
    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_2
    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 1592
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    goto :goto_0

    .end local v0           #airplaneModeOn:Z
    :cond_1
    move v0, v1

    .line 1587
    goto :goto_1

    .line 1591
    .restart local v0       #airplaneModeOn:Z
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_2
.end method

.method private prepareDialog()V
    .locals 6

    .prologue
    .line 773
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->refreshSilentMode()V

    .line 774
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    .line 776
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->updateKidModeState()V

    .line 778
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 779
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 780
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_0

    .line 781
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 782
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 785
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "global_actions"

    const-string v4, "string"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->setTitle(I)V

    .line 787
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->isSense2Mode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 788
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->updateDialogSelector()V

    .line 790
    :cond_1
    return-void
.end method

.method private refreshSilentMode()V
    .locals 3

    .prologue
    .line 826
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasVibrator:Z

    if-nez v1, :cond_0

    .line 827
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 829
    .local v0, silentModeOn:Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$Action;

    check-cast v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    .line 832
    .end local v0           #silentModeOn:Z
    :cond_0
    return-void

    .line 827
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 829
    .restart local v0       #silentModeOn:Z
    :cond_2
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method private startFlashlightActivity()V
    .locals 5

    .prologue
    .line 2103
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2104
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.flashlight"

    const-string v3, "com.htc.flashlight.FlashlightActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2105
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2108
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V

    .line 2109
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2115
    :goto_0
    return-void

    .line 2111
    :catch_0
    move-exception v0

    .line 2113
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to start Flashlight Activity !!! e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private supportKidModeApp(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 2019
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHideKidMode:Z

    if-eqz v4, :cond_0

    .line 2038
    :goto_0
    return v3

    .line 2023
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2024
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 2026
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    const-string v4, "com.zoodles.kidmode"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2033
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 2035
    const/4 v3, 0x1

    goto :goto_0

    .line 2027
    :catch_0
    move-exception v1

    .line 2029
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[KID] com.zoodles.kidmode does not exist. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2037
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const-string v4, "GlobalActions"

    const-string v5, "[KID] kid mode is not a system app"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateDialogSelector()V
    .locals 13

    .prologue
    .line 794
    iget-object v9, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    if-nez v9, :cond_1

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 797
    :cond_1
    const-string v9, "GlobalActions"

    const-string v10, "updateDialogSelector()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 800
    .local v0, am:Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 801
    .local v1, config:Landroid/content/res/Configuration;
    iget-object v6, v1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 802
    .local v6, skinPackage:Ljava/lang/String;
    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v9, :cond_2

    const-string v9, "GlobalActions"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateDialogSelector(), skinPackage == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_2
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v2

    .line 806
    .local v2, custManager:Lcom/htc/customization/HtcCustomizationManager;
    const-string v9, "System"

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v2, v9, v10, v11}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    .line 807
    .local v3, custReader:Lcom/htc/customization/HtcCustomizationReader;
    const-string v9, "sense_version"

    const-string v10, "5.0"

    invoke-interface {v3, v9, v10}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 808
    .local v5, senseV:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 810
    .local v8, version:F
    const/high16 v9, 0x4080

    cmpg-float v9, v8, v9

    if-gez v9, :cond_0

    .line 811
    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "default"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 812
    :cond_3
    iget-object v9, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 813
    .local v4, res:Landroid/content/res/Resources;
    iget-object v9, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v9

    const-string v10, "list_selector_background"

    const-string v11, "drawable"

    const-string v12, "android"

    invoke-virtual {v4, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setSelector(I)V

    goto :goto_0

    .line 820
    .end local v1           #config:Landroid/content/res/Configuration;
    .end local v2           #custManager:Lcom/htc/customization/HtcCustomizationManager;
    .end local v3           #custReader:Lcom/htc/customization/HtcCustomizationReader;
    .end local v4           #res:Landroid/content/res/Resources;
    .end local v5           #senseV:Ljava/lang/String;
    .end local v6           #skinPackage:Ljava/lang/String;
    .end local v8           #version:F
    :catch_0
    move-exception v9

    goto :goto_0

    .line 815
    .restart local v1       #config:Landroid/content/res/Configuration;
    .restart local v2       #custManager:Lcom/htc/customization/HtcCustomizationManager;
    .restart local v3       #custReader:Lcom/htc/customization/HtcCustomizationReader;
    .restart local v5       #senseV:Ljava/lang/String;
    .restart local v6       #skinPackage:Ljava/lang/String;
    .restart local v8       #version:F
    :cond_4
    iget-object v9, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    .line 816
    .local v7, themeres:Landroid/content/res/Resources;
    iget-object v9, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v9

    const-string v10, "list_selector_background"

    const-string v11, "drawable"

    invoke-virtual {v7, v10, v11, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method private updateKidModeState()V
    .locals 2

    .prologue
    .line 1980
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->isKidModeChildLockActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1981
    const-string v0, "GlobalActions"

    const-string v1, "[KID] Now is Kid Mode Home"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKidModeState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 1989
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKidModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKidModeState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    .line 1990
    return-void

    .line 1985
    :cond_0
    const-string v0, "GlobalActions"

    const-string v1, "[KID] Not Kid Mode Home"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKidModeState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_0
.end method


# virtual methods
.method public getDeviceSkuID()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2056
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 2057
    .local v0, custManager:Lcom/htc/customization/HtcCustomizationManager;
    const-string v3, "Android_Core_Framework"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4, v5}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 2058
    .local v1, custReader:Lcom/htc/customization/HtcCustomizationReader;
    const-string v3, "sku_id"

    invoke-interface {v1, v3, v5}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v2

    .line 2059
    .local v2, skuID:I
    const-string v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get device ACC skuID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    return v2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;

    if-nez v0, :cond_0

    .line 849
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/GlobalActions$Action;->onPress()V

    .line 852
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 836
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_0

    .line 838
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 839
    :catch_0
    move-exception v0

    .line 841
    .local v0, ie:Ljava/lang/IllegalArgumentException;
    const-string v1, "GlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 855
    packed-switch p2, :pswitch_data_0

    .line 860
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 857
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 855
    nop

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method

.method public setFlashlightMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 2120
    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call setFlashlightMode() from outside, mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mFlashlightMode:I

    .line 2122
    return-void
.end method

.method public showDialog(ZZ)V
    .locals 4
    .parameter "keyguardShowing"
    .parameter "isDeviceProvisioned"

    .prologue
    const/4 v2, 0x2

    .line 288
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    .line 289
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    .line 292
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getDeviceSkuID()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceSkuID:I

    .line 295
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    if-eqz v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->dismiss()V

    .line 297
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    .line 299
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 305
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mFlashlightMode:I

    if-ne v1, v2, :cond_0

    .line 307
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    const v2, 0x182ae

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 308
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 311
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void

    .line 301
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->handleShow()V

    goto :goto_0
.end method
