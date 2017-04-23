.class public Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteDcPhone;
.super Lcom/android/internal/telephony/gsm/GSMPhone;
.source "SvlteDcPhone.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "SvlteDcPhone"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "phoneId"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 72
    const-string/jumbo v0, "SvlteDcPhone"

    const-string/jumbo v1, "Create CDMALTEDcPhone"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string/jumbo v0, "CdmaLteDc"

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public updatePhoneObject(I)V
    .locals 2
    .param p1, "voiceRadioTech"    # I

    .prologue
    .line 96
    const-string/jumbo v0, "SvlteDcPhone"

    const-string/jumbo v1, "updatePhoneObject should not update, alwyas stay in 3GPP RAT"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method
