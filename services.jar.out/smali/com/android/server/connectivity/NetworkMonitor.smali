.class public Lcom/android/server/connectivity/NetworkMonitor;
.super Lcom/android/internal/util/StateMachine;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkMonitor$DefaultState;,
        Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;,
        Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;,
        Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;,
        Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;,
        Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;,
        Lcom/android/server/connectivity/NetworkMonitor$LingeringState;
    }
.end annotation


# static fields
.field public static final ACTION_NETWORK_CONDITIONS_MEASURED:Ljava/lang/String; = "android.net.conn.NETWORK_CONDITIONS_MEASURED"

.field private static final BASE:I = 0x82000

.field private static final BLAME_FOR_EVALUATION_ATTEMPTS:I = 0x5

.field private static final BODY_BEGIN_TAG:Ljava/lang/String; = "<BODY>"

.field private static final BODY_END_TAG:Ljava/lang/String; = "</BODY>"

.field private static final CAPTIVE_PORTAL_REEVALUATE_DELAY_MS:I = 0x927c0

.field private static final CMD_CAPTIVE_PORTAL_APP_FINISHED:I = 0x82009

.field private static final CMD_CAPTIVE_PORTAL_RECHECK:I = 0x8200c

.field public static final CMD_FORCE_REEVALUATION:I = 0x82008

.field private static final CMD_LAUNCH_CAPTIVE_PORTAL_APP:I = 0x8200b

.field private static final CMD_LINGER_EXPIRED:I = 0x82004

.field public static final CMD_NETWORK_CONNECTED:I = 0x82001

.field public static final CMD_NETWORK_DISCONNECTED:I = 0x82007

.field public static final CMD_NETWORK_LINGER:I = 0x82003

.field private static final CMD_REEVALUATE:I = 0x82006

.field private static final DBG:Z = true

.field private static DEFAULT_LINGER_DELAY_MS:I = 0x0

.field private static final DEFAULT_SERVER:Ljava/lang/String; = "captive.apple.com"

.field public static final EVENT_NETWORK_LINGER_COMPLETE:I = 0x82005

.field public static final EVENT_NETWORK_TESTED:I = 0x82002

.field public static final EVENT_PROVISIONING_NOTIFICATION:I = 0x8200a

.field public static final EXTRA_BSSID:Ljava/lang/String; = "extra_bssid"

.field public static final EXTRA_CELL_ID:Ljava/lang/String; = "extra_cellid"

.field public static final EXTRA_CONNECTIVITY_TYPE:Ljava/lang/String; = "extra_connectivity_type"

.field public static final EXTRA_IS_CAPTIVE_PORTAL:Ljava/lang/String; = "extra_is_captive_portal"

.field public static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "extra_network_type"

.field public static final EXTRA_REQUEST_TIMESTAMP_MS:Ljava/lang/String; = "extra_request_timestamp_ms"

.field public static final EXTRA_RESPONSE_RECEIVED:Ljava/lang/String; = "extra_response_received"

.field public static final EXTRA_RESPONSE_TIMESTAMP_MS:Ljava/lang/String; = "extra_response_timestamp_ms"

.field public static final EXTRA_SSID:Ljava/lang/String; = "extra_ssid"

.field private static final IGNORE_REEVALUATE_ATTEMPTS:I = 0x5

.field private static final INITIAL_REEVALUATE_DELAY_MS:I = 0x3e8

.field private static final INVALID_UID:I = -0x1

.field private static final LINGER_DELAY_PROPERTY:Ljava/lang/String; = "persist.netmon.linger"

.field private static final MAX_REEVALUATE_DELAY_MS:I = 0x927c0

.field public static final NETWORK_TEST_RESULT_INVALID:I = 0x1

.field public static final NETWORK_TEST_RESULT_VALID:I = 0x0

.field private static final PERMISSION_ACCESS_NETWORK_CONDITIONS:Ljava/lang/String; = "android.permission.ACCESS_NETWORK_CONDITIONS"

.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "NetworkMonitor"

.field private static final TITLE_BEGIN_TAG:Ljava/lang/String; = "<TITLE>"

.field private static final TITLE_END_TAG:Ljava/lang/String; = "</TITLE>"

.field private static mSkipNetworkValidation:Z


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mCaptivePortalState:Lcom/android/internal/util/State;

.field private final mConnectivityServiceHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultRequest:Landroid/net/NetworkRequest;

.field private final mDefaultState:Lcom/android/internal/util/State;

.field private mDontDisplaySigninNotification:Z

.field private final mEvaluatingState:Lcom/android/internal/util/State;

.field private mIsCaptivePortalCheckEnabled:Z

.field private mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

.field private final mLingerDelayMs:I

.field private mLingerToken:I

.field private final mLingeringState:Lcom/android/internal/util/State;

.field private final mMaybeNotifyState:Lcom/android/internal/util/State;

.field private final mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

.field private mReevaluateToken:I

.field private mServer:Ljava/lang/String;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUidResponsibleForReeval:I

.field private mUserDoesNotWant:Z

.field private final mValidatedState:Lcom/android/internal/util/State;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field public systemReady:Z

.field private final validationLogs:Landroid/util/LocalLog;


# direct methods
.method static synthetic -get0(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/app/AlarmManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingeringState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    return v0
.end method

.method static synthetic -get13()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/connectivity/NetworkMonitor;->mSkipNetworkValidation:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/NetworkRequest;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultRequest:Landroid/net/NetworkRequest;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingerDelayMs:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingerToken:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingerToken:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->quit()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .locals 0
    .param p1, "what"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 210
    const/16 v0, 0x7530

    sput v0, Lcom/android/server/connectivity/NetworkMonitor;->DEFAULT_LINGER_DELAY_MS:I

    .line 255
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/connectivity/NetworkMonitor;->mSkipNetworkValidation:Z

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "networkAgentInfo"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "defaultRequest"    # Landroid/net/NetworkRequest;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NetworkMonitor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 212
    iput v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingerToken:I

    .line 219
    iput v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    .line 221
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    .line 236
    iput-boolean v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    .line 239
    iput-boolean v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    .line 241
    iput-boolean v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    .line 243
    iput-boolean v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    .line 245
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;

    invoke-direct {v0, p0, v2}, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$DefaultState;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    .line 246
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;

    invoke-direct {v0, p0, v2}, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    .line 247
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;

    invoke-direct {v0, p0, v2}, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    .line 248
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;

    invoke-direct {v0, p0, v2}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    .line 249
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;

    invoke-direct {v0, p0, v2}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    .line 250
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;

    invoke-direct {v0, p0, v2}, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$LingeringState;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingeringState:Lcom/android/internal/util/State;

    .line 252
    iput-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    .line 254
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    .line 268
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    .line 269
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    .line 270
    iput-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 271
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 272
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 273
    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    .line 274
    iput-object p4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultRequest:Landroid/net/NetworkRequest;

    .line 276
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;)V

    .line 277
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 278
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 279
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 280
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 281
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingeringState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 282
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->setInitialState(Lcom/android/internal/util/State;)V

    .line 284
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 285
    const-string/jumbo v1, "captive_portal_server"

    .line 284
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mServer:Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mServer:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "captive.apple.com"

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mServer:Ljava/lang/String;

    .line 288
    :cond_0
    const-string/jumbo v0, "persist.netmon.linger"

    sget v1, Lcom/android/server/connectivity/NetworkMonitor;->DEFAULT_LINGER_DELAY_MS:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLingerDelayMs:I

    .line 290
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 291
    iput-boolean v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    .line 299
    :goto_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 300
    const v1, 0x80c0006

    .line 299
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/connectivity/NetworkMonitor;->mSkipNetworkValidation:Z

    .line 302
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->start()V

    .line 264
    return-void

    .line 293
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    goto :goto_0
.end method

.method public static SetDefaultLingerTime(I)V
    .locals 2
    .param p0, "time_ms"    # I

    .prologue
    .line 946
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 947
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "SetDefaultLingerTime only for internal testing."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 949
    :cond_0
    sput p0, Lcom/android/server/connectivity/NetworkMonitor;->DEFAULT_LINGER_DELAY_MS:I

    .line 945
    return-void
.end method

.method private sendNetworkConditionsBroadcast(ZZJJ)V
    .locals 15
    .param p1, "responseReceived"    # Z
    .param p2, "isCaptivePortal"    # Z
    .param p3, "requestTimestampMs"    # J
    .param p5, "responseTimestampMs"    # J

    .prologue
    .line 870
    iget-object v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 871
    const-string/jumbo v13, "wifi_scan_always_enabled"

    const/4 v14, 0x0

    .line 870
    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_0

    .line 872
    return-void

    .line 875
    :cond_0
    iget-boolean v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    if-nez v12, :cond_1

    return-void

    .line 877
    :cond_1
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v12, "android.net.conn.NETWORK_CONDITIONS_MEASURED"

    invoke-direct {v10, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 878
    .local v10, "latencyBroadcast":Landroid/content/Intent;
    iget-object v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v12, v12, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 929
    return-void

    .line 880
    :pswitch_0
    iget-object v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    .line 881
    .local v8, "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v8, :cond_4

    .line 889
    const-string/jumbo v12, "extra_ssid"

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 890
    const-string/jumbo v12, "extra_bssid"

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 931
    .end local v8    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_2
    const-string/jumbo v12, "extra_connectivity_type"

    iget-object v13, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v13, v13, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getType()I

    move-result v13

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 932
    const-string/jumbo v12, "extra_response_received"

    move/from16 v0, p1

    invoke-virtual {v10, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 933
    const-string/jumbo v12, "extra_request_timestamp_ms"

    move-wide/from16 v0, p3

    invoke-virtual {v10, v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 935
    if-eqz p1, :cond_3

    .line 936
    const-string/jumbo v12, "extra_is_captive_portal"

    move/from16 v0, p2

    invoke-virtual {v10, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 937
    const-string/jumbo v12, "extra_response_timestamp_ms"

    move-wide/from16 v0, p5

    invoke-virtual {v10, v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 939
    :cond_3
    iget-object v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 940
    const-string/jumbo v14, "android.permission.ACCESS_NETWORK_CONDITIONS"

    .line 939
    invoke-virtual {v12, v10, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 869
    return-void

    .line 892
    .restart local v8    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_4
    const-string/jumbo v12, "network info is TYPE_WIFI but no ConnectionInfo found"

    invoke-virtual {p0, v12}, Lcom/android/server/connectivity/NetworkMonitor;->logw(Ljava/lang/String;)V

    .line 893
    return-void

    .line 897
    .end local v8    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    :pswitch_1
    const-string/jumbo v12, "extra_network_type"

    iget-object v13, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v13

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 898
    iget-object v12, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v9

    .line 899
    .local v9, "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-nez v9, :cond_5

    return-void

    .line 900
    :cond_5
    const/4 v11, 0x0

    .line 901
    .local v11, "numRegisteredCellInfo":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "cellInfo$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/CellInfo;

    .line 902
    .local v6, "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v6}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 903
    add-int/lit8 v11, v11, 0x1

    .line 904
    const/4 v12, 0x1

    if-le v11, v12, :cond_7

    .line 905
    const-string/jumbo v12, "more than one registered CellInfo.  Can\'t tell which is active.  Bailing."

    invoke-virtual {p0, v12}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 907
    return-void

    .line 909
    :cond_7
    instance-of v12, v6, Landroid/telephony/CellInfoCdma;

    if-eqz v12, :cond_8

    .line 910
    check-cast v6, Landroid/telephony/CellInfoCdma;

    .end local v6    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v6}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v2

    .line 911
    .local v2, "cellId":Landroid/telephony/CellIdentityCdma;
    const-string/jumbo v12, "extra_cellid"

    invoke-virtual {v10, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 912
    .end local v2    # "cellId":Landroid/telephony/CellIdentityCdma;
    .restart local v6    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_8
    instance-of v12, v6, Landroid/telephony/CellInfoGsm;

    if-eqz v12, :cond_9

    .line 913
    check-cast v6, Landroid/telephony/CellInfoGsm;

    .end local v6    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v6}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    .line 914
    .local v3, "cellId":Landroid/telephony/CellIdentityGsm;
    const-string/jumbo v12, "extra_cellid"

    invoke-virtual {v10, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 915
    .end local v3    # "cellId":Landroid/telephony/CellIdentityGsm;
    .restart local v6    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_9
    instance-of v12, v6, Landroid/telephony/CellInfoLte;

    if-eqz v12, :cond_a

    .line 916
    check-cast v6, Landroid/telephony/CellInfoLte;

    .end local v6    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v6}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v4

    .line 917
    .local v4, "cellId":Landroid/telephony/CellIdentityLte;
    const-string/jumbo v12, "extra_cellid"

    invoke-virtual {v10, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 918
    .end local v4    # "cellId":Landroid/telephony/CellIdentityLte;
    .restart local v6    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_a
    instance-of v12, v6, Landroid/telephony/CellInfoWcdma;

    if-eqz v12, :cond_b

    .line 919
    check-cast v6, Landroid/telephony/CellInfoWcdma;

    .end local v6    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v5

    .line 920
    .local v5, "cellId":Landroid/telephony/CellIdentityWcdma;
    const-string/jumbo v12, "extra_cellid"

    invoke-virtual {v10, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 922
    .end local v5    # "cellId":Landroid/telephony/CellIdentityWcdma;
    .restart local v6    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_b
    const-string/jumbo v12, "Registered cellinfo is unrecognized"

    invoke-virtual {p0, v12}, Lcom/android/server/connectivity/NetworkMonitor;->logw(Ljava/lang/String;)V

    .line 923
    return-void

    .line 878
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private validationLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 310
    return-void
.end method


# virtual methods
.method public getValidationLogs()Landroid/util/LocalLog$ReadOnlyLocalLog;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    invoke-virtual {v0}, Landroid/util/LocalLog;->readOnlyLocalLog()Landroid/util/LocalLog$ReadOnlyLocalLog;

    move-result-object v0

    return-object v0
.end method

.method protected isCaptivePortal()I
    .locals 26

    .prologue
    .line 723
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    if-nez v3, :cond_0

    const/16 v3, 0xcc

    return v3

    .line 725
    :cond_0
    const/16 v25, 0x0

    .line 726
    .local v25, "urlConnection":Ljava/net/HttpURLConnection;
    const/16 v18, 0x257

    .line 728
    .local v18, "httpResponseCode":I
    :try_start_0
    new-instance v24, Ljava/net/URL;

    const-string/jumbo v3, "http"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor;->mServer:Ljava/lang/String;

    const-string/jumbo v5, "/generate_204"

    move-object/from16 v0, v24

    invoke-direct {v0, v3, v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    .local v24, "url":Ljava/net/URL;
    const/16 v16, 0x0

    .line 746
    .local v16, "fetchPac":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v3, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v21

    .line 747
    .local v21, "proxyInfo":Landroid/net/ProxyInfo;
    if-eqz v21, :cond_1

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual/range {v21 .. v21}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 751
    :cond_1
    :goto_0
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 752
    .local v13, "connectInfo":Ljava/lang/StringBuffer;
    const/16 v17, 0x0

    .line 755
    .local v17, "hostToResolve":Ljava/lang/String;
    if-eqz v21, :cond_2

    if-eqz v16, :cond_6

    .line 756
    :cond_2
    invoke-virtual/range {v24 .. v24}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v17

    .line 760
    .end local v17    # "hostToResolve":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 761
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 763
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v3, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v10

    .line 764
    .local v10, "addresses":[Ljava/net/InetAddress;
    const/4 v3, 0x0

    array-length v4, v10

    :goto_2
    if-ge v3, v4, :cond_7

    aget-object v2, v10, v3

    .line 765
    .local v2, "address":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 766
    array-length v5, v10

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v10, v5

    if-eq v2, v5, :cond_4

    const-string/jumbo v5, ","

    invoke-virtual {v13, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 764
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 748
    .end local v2    # "address":Ljava/net/InetAddress;
    .end local v10    # "addresses":[Ljava/net/InetAddress;
    .end local v13    # "connectInfo":Ljava/lang/StringBuffer;
    :cond_5
    new-instance v24, Ljava/net/URL;

    .end local v24    # "url":Ljava/net/URL;
    invoke-virtual/range {v21 .. v21}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 749
    .restart local v24    # "url":Ljava/net/URL;
    const/16 v16, 0x1

    goto :goto_0

    .line 757
    .restart local v13    # "connectInfo":Ljava/lang/StringBuffer;
    .restart local v17    # "hostToResolve":Ljava/lang/String;
    :cond_6
    if-eqz v21, :cond_3

    .line 758
    invoke-virtual/range {v21 .. v21}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v17

    .local v17, "hostToResolve":Ljava/lang/String;
    goto :goto_1

    .line 769
    .end local v17    # "hostToResolve":Ljava/lang/String;
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Checking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v24 .. v24}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 770
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    .line 769
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 771
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v3, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v25, v0

    .line 772
    .local v25, "urlConnection":Ljava/net/HttpURLConnection;
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 773
    const/16 v3, 0x2710

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 774
    const/16 v3, 0x2710

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 775
    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 778
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 780
    .local v6, "requestTimestamp":J
    invoke-virtual/range {v25 .. v25}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 783
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 785
    .local v8, "responseTimestamp":J
    invoke-virtual/range {v25 .. v25}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v18

    .line 786
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCaptivePortal: ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 787
    const-string/jumbo v4, " headers="

    .line 786
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 787
    invoke-virtual/range {v25 .. v25}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    .line 786
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 804
    const/16 v3, 0xc8

    move/from16 v0, v18

    if-ne v0, v3, :cond_b

    .line 805
    new-instance v22, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual/range {v25 .. v25}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 806
    .local v22, "reader":Ljava/io/BufferedReader;
    if-eqz v22, :cond_b

    .line 807
    const/16 v19, 0x0

    .line 808
    :cond_8
    :goto_3
    invoke-virtual/range {v22 .. v22}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    .local v19, "line":Ljava/lang/String;
    if-eqz v19, :cond_b

    .line 809
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCaptivePortalEx, line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 810
    const/16 v23, 0x0

    .local v23, "title":Ljava/lang/String;
    const/4 v12, 0x0

    .line 811
    .local v12, "body":Ljava/lang/String;
    const/4 v11, -0x1

    .local v11, "begin":I
    const/4 v15, -0x1

    .line 813
    .local v15, "end":I
    const-string/jumbo v3, "<TITLE>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 814
    const-string/jumbo v3, "</TITLE>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 815
    const/4 v3, -0x1

    if-eq v11, v3, :cond_9

    const/4 v3, -0x1

    if-eq v15, v3, :cond_9

    if-le v15, v11, :cond_9

    .line 816
    const-string/jumbo v3, "<TITLE>"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v11

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 819
    .end local v23    # "title":Ljava/lang/String;
    :cond_9
    const-string/jumbo v3, "<BODY>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 820
    const-string/jumbo v3, "</BODY>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 821
    const/4 v3, -0x1

    if-eq v11, v3, :cond_a

    const/4 v3, -0x1

    if-eq v15, v3, :cond_a

    if-le v15, v11, :cond_a

    .line 822
    const-string/jumbo v3, "<BODY>"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v11

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 824
    .end local v12    # "body":Ljava/lang/String;
    :cond_a
    if-eqz v23, :cond_8

    const-string/jumbo v3, "SUCCESS"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 825
    if-eqz v12, :cond_8

    const-string/jumbo v3, "SUCCESS"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 824
    if-eqz v3, :cond_8

    .line 826
    const/16 v18, 0xcc

    goto/16 :goto_3

    .line 832
    .end local v11    # "begin":I
    .end local v15    # "end":I
    .end local v19    # "line":Ljava/lang/String;
    .end local v22    # "reader":Ljava/io/BufferedReader;
    :cond_b
    const/16 v3, 0x12e

    move/from16 v0, v18

    if-eq v0, v3, :cond_c

    const/16 v3, 0x12e

    move/from16 v0, v18

    if-ne v0, v3, :cond_d

    .line 833
    :cond_c
    const-string/jumbo v3, "Location"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 834
    .local v20, "location":Ljava/lang/String;
    if-eqz v20, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/NetworkMonitor;->mServer:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 835
    const/16 v18, 0xcc

    .line 840
    .end local v20    # "location":Ljava/lang/String;
    :cond_d
    const/16 v3, 0xc8

    move/from16 v0, v18

    if-ne v0, v3, :cond_e

    if-eqz v16, :cond_e

    .line 841
    const-string/jumbo v3, "PAC fetch 200 response interpreted as 204 response."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 842
    const/16 v18, 0xcc

    .line 846
    :cond_e
    const/16 v3, 0xcc

    move/from16 v0, v18

    if-eq v0, v3, :cond_10

    const/4 v5, 0x1

    .line 845
    :goto_4
    const/4 v4, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/connectivity/NetworkMonitor;->sendNetworkConditionsBroadcast(ZZJJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 854
    if-eqz v25, :cond_f

    .line 855
    invoke-virtual/range {v25 .. v25}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 858
    .end local v6    # "requestTimestamp":J
    .end local v8    # "responseTimestamp":J
    .end local v13    # "connectInfo":Ljava/lang/StringBuffer;
    .end local v16    # "fetchPac":Z
    .end local v21    # "proxyInfo":Landroid/net/ProxyInfo;
    .end local v24    # "url":Ljava/net/URL;
    .end local v25    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_f
    :goto_5
    return v18

    .line 846
    .restart local v6    # "requestTimestamp":J
    .restart local v8    # "responseTimestamp":J
    .restart local v13    # "connectInfo":Ljava/lang/StringBuffer;
    .restart local v16    # "fetchPac":Z
    .restart local v21    # "proxyInfo":Landroid/net/ProxyInfo;
    .restart local v24    # "url":Ljava/net/URL;
    .restart local v25    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_10
    const/4 v5, 0x0

    goto :goto_4

    .line 848
    .end local v6    # "requestTimestamp":J
    .end local v8    # "responseTimestamp":J
    .end local v13    # "connectInfo":Ljava/lang/StringBuffer;
    .end local v16    # "fetchPac":Z
    .end local v21    # "proxyInfo":Landroid/net/ProxyInfo;
    .end local v24    # "url":Ljava/net/URL;
    .end local v25    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v14

    .line 849
    .local v14, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Probably not a portal: exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 850
    const/16 v3, 0x257

    move/from16 v0, v18

    if-ne v0, v3, :cond_11

    .line 854
    :cond_11
    if-eqz v25, :cond_f

    .line 855
    invoke-virtual/range {v25 .. v25}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5

    .line 853
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 854
    if-eqz v25, :cond_12

    .line 855
    invoke-virtual/range {v25 .. v25}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 853
    :cond_12
    throw v3
.end method

.method protected log(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NetworkMonitor/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void
.end method
