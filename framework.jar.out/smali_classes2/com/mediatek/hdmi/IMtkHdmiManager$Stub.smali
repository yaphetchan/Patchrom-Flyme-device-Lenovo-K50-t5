.class public abstract Lcom/mediatek/hdmi/IMtkHdmiManager$Stub;
.super Landroid/os/Binder;
.source "IMtkHdmiManager.java"

# interfaces
.implements Lcom/mediatek/hdmi/IMtkHdmiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/hdmi/IMtkHdmiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/hdmi/IMtkHdmiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.hdmi.IMtkHdmiManager"

.field static final TRANSACTION_enableHdmi:I = 0x1

.field static final TRANSACTION_enableHdmiPower:I = 0x2

.field static final TRANSACTION_getAudioParameter:I = 0xd

.field static final TRANSACTION_getDisplayType:I = 0x9

.field static final TRANSACTION_getResolutionMask:I = 0x6

.field static final TRANSACTION_getSupportedResolutions:I = 0x8

.field static final TRANSACTION_hasCapability:I = 0xc

.field static final TRANSACTION_isSignalOutputting:I = 0x7

.field static final TRANSACTION_needSwDrmProtect:I = 0xb

.field static final TRANSACTION_notifyHdVideoState:I = 0xa

.field static final TRANSACTION_setColorAndDeep:I = 0x5

.field static final TRANSACTION_setVideoResolution:I = 0x3

.field static final TRANSACTION_setVideoScale:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.mediatek.hdmi.IMtkHdmiManager"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/hdmi/IMtkHdmiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/hdmi/IMtkHdmiManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "com.mediatek.hdmi.IMtkHdmiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/hdmi/IMtkHdmiManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/mediatek/hdmi/IMtkHdmiManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/mediatek/hdmi/IMtkHdmiManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/hdmi/IMtkHdmiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 45
    :sswitch_0
    const-string/jumbo v6, "com.mediatek.hdmi.IMtkHdmiManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v7

    .line 50
    :sswitch_1
    const-string/jumbo v8, "com.mediatek.hdmi.IMtkHdmiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    const/4 v1, 0x1

    .line 53
    .local v1, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v1}, Lcom/mediatek/hdmi/IMtkHdmiManager$Stub;->enableHdmi(Z)Z

    move-result v4

    .line 54
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v4, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    return v7

    .line 52
    .end local v1    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Z
    goto :goto_0

    .line 60
    .end local v1    # "_arg0":Z
    :sswitch_2
    const-string/jumbo v8, "com.mediatek.hdmi.IMtkHdmiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    const/4 v1, 0x1

    .line 63
    .restart local v1    # "_arg0":Z
    :goto_1
    invoke-virtual {p0, v1}, Lcom/mediatek/hdmi/IMtkHdmiManager$Stub;->enableHdmiPower(Z)Z

    move-result v4

    .line 64
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v4, :cond_2

    move v6, v7

    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    return v7

    .line 62
    .end local v1    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Z
    goto :goto_1

    .line 70
    .end local v1    # "_arg0":Z
    :sswitch_3
    const-string/jumbo v8, "com.mediatek.hdmi.IMtkHdmiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/hdmi/IMtkHdmiManager$Stub;->setVideoResolution(I)Z

    move-result v4

    .line 74
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v4, :cond_4

    move v6, v7

    :cond_4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    return v7

    .line 80
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_4
    const-string/jumbo v8, "com.mediatek.hdmi.IMtkHdmiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 83
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/hdmi/IMtkHdmiManager$Stub;->setVideoScale(I)Z

    move-result v4

    .line 84
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v4, :cond_5

    move v6, v7

    :cond_5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    return v7

    .line 90
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_5
    const-string/jumbo v8, "com.mediatek.hdmi.IMtkHdmiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 94
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 95
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/mediatek/hdmi/IMtkHdmiManager$Stub;->setColorAndDeep(II)Z

    move-result v4

    .line 96
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v4, :cond_6

    move v6, v7

    :cond_6
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    return v7

    .line 102
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_6
    const-string/jumbo v6, "com.mediatek.hdmi.IMtkHdmiManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/mediatek/hdmi/IMtkHdmiManager$Stub;->getResolutionMask()[I

    move-result-object v5

    .line 104
    .local v5, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 106
    return v7

    .line 110
    .end local v5    # "_result":[I
    :sswitch_7
    const-string/jumbo v8, "com.mediatek.hdmi.IMtkHdmiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/mediatek/hdmi/IMtkHdmiManager$Stub;->isSignalOutputting()Z

    move-result v4

    .line 112
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v4, :cond_7

    move v6, v7

    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    return v7

    .line 118
    .end local v4    # "_result":Z
    :sswitch_8
    const-string/jumbo v6, "com.mediatek.hdmi.IMtkHdmiManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/mediatek/hdmi/IMtkHdmiManager$Stub;->getSupportedResolutions()[I

    move-result-object v5

    .line 120
    .restart local v5    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 122
    return v7

    .line 126
    .end local v5    # "_result":[I
    :sswitch_9
    const-string/jumbo v6, "com.mediatek.hdmi.IMtkHdmiManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/mediatek/hdmi/IMtkHdmiManager$Stub;->getDisplayType()I

    move-result v3

    .line 128
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    return v7

    .line 134
    .end local v3    # "_result":I
    :sswitch_a
    const-string/jumbo v6, "com.mediatek.hdmi.IMtkHdmiManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    const/4 v1, 0x1

    .line 137
    .restart local v1    # "_arg0":Z
    :goto_2
    invoke-virtual {p0, v1}, Lcom/mediatek/hdmi/IMtkHdmiManager$Stub;->notifyHdVideoState(Z)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    return v7

    .line 136
    .end local v1    # "_arg0":Z
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Z
    goto :goto_2

    .line 143
    .end local v1    # "_arg0":Z
    :sswitch_b
    const-string/jumbo v8, "com.mediatek.hdmi.IMtkHdmiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/mediatek/hdmi/IMtkHdmiManager$Stub;->needSwDrmProtect()Z

    move-result v4

    .line 145
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-eqz v4, :cond_9

    move v6, v7

    :cond_9
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    return v7

    .line 151
    .end local v4    # "_result":Z
    :sswitch_c
    const-string/jumbo v8, "com.mediatek.hdmi.IMtkHdmiManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 154
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/hdmi/IMtkHdmiManager$Stub;->hasCapability(I)Z

    move-result v4

    .line 155
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v4, :cond_a

    move v6, v7

    :cond_a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    return v7

    .line 161
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_d
    const-string/jumbo v6, "com.mediatek.hdmi.IMtkHdmiManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 165
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 166
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/mediatek/hdmi/IMtkHdmiManager$Stub;->getAudioParameter(II)I

    move-result v3

    .line 167
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    return v7

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
