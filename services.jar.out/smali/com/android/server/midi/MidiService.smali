.class public Lcom/android/server/midi/MidiService;
.super Landroid/media/midi/IMidiManager$Stub;
.source "MidiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/midi/MidiService$Lifecycle;,
        Lcom/android/server/midi/MidiService$Client;,
        Lcom/android/server/midi/MidiService$Device;,
        Lcom/android/server/midi/MidiService$DeviceConnection;,
        Lcom/android/server/midi/MidiService$1;
    }
.end annotation


# static fields
.field private static final EMPTY_DEVICE_INFO_ARRAY:[Landroid/media/midi/MidiDeviceInfo;

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MidiService"


# instance fields
.field private final mBluetoothDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/server/midi/MidiService$Device;",
            ">;"
        }
    .end annotation
.end field

.field private final mBluetoothServiceUid:I

.field private final mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/midi/MidiService$Client;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDevicesByInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/media/midi/MidiDeviceInfo;",
            "Lcom/android/server/midi/MidiService$Device;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicesByServer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/midi/MidiService$Device;",
            ">;"
        }
    .end annotation
.end field

.field private mNextDeviceId:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;


# direct methods
.method static synthetic -get0(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/midi/MidiService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/midi/MidiService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/midi/MidiService;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->addPackageDeviceServers(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/midi/MidiService;Lcom/android/server/midi/MidiService$Device;)V
    .locals 0
    .param p1, "device"    # Lcom/android/server/midi/MidiService$Device;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->removeDeviceLocked(Lcom/android/server/midi/MidiService$Device;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/midi/MidiService;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->removePackageDeviceServers(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 602
    new-array v0, v1, [Landroid/media/midi/MidiDeviceInfo;

    sput-object v0, Lcom/android/server/midi/MidiService;->EMPTY_DEVICE_INFO_ARRAY:[Landroid/media/midi/MidiDeviceInfo;

    .line 828
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/midi/MidiService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 557
    invoke-direct {p0}, Landroid/media/midi/IMidiManager$Stub;-><init>()V

    .line 81
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    .line 85
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 84
    iput-object v7, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    .line 89
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 88
    iput-object v7, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    .line 92
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    .line 95
    iput v9, p0, Lcom/android/server/midi/MidiService;->mNextDeviceId:I

    .line 103
    new-instance v7, Lcom/android/server/midi/MidiService$1;

    invoke-direct {v7, p0}, Lcom/android/server/midi/MidiService$1;-><init>(Lcom/android/server/midi/MidiService;)V

    iput-object v7, p0, Lcom/android/server/midi/MidiService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 558
    iput-object p1, p0, Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;

    .line 559
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 560
    iget-object v7, p0, Lcom/android/server/midi/MidiService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v7, p1, v8, v9}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 562
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "android.media.midi.MidiDeviceService"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 563
    .local v4, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 564
    const/16 v8, 0x80

    .line 563
    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 565
    .local v5, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_1

    .line 566
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 567
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 568
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v6, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 569
    .local v6, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v6, :cond_0

    .line 570
    invoke-direct {p0, v6}, Lcom/android/server/midi/MidiService;->addPackageDeviceServer(Landroid/content/pm/ServiceInfo;)V

    .line 567
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 577
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v6    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v8, "com.android.bluetoothmidiservice"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 581
    :goto_1
    if-eqz v3, :cond_2

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_2

    .line 582
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v7, p0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    .line 557
    :goto_2
    return-void

    .line 578
    :catch_0
    move-exception v1

    .line 579
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    .local v3, "info":Landroid/content/pm/PackageInfo;
    goto :goto_1

    .line 584
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    :cond_2
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    goto :goto_2
.end method

.method private addDeviceLocked(III[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/media/midi/IMidiDeviceServer;Landroid/content/pm/ServiceInfo;ZI)Landroid/media/midi/MidiDeviceInfo;
    .locals 14
    .param p1, "type"    # I
    .param p2, "numInputPorts"    # I
    .param p3, "numOutputPorts"    # I
    .param p4, "inputPortNames"    # [Ljava/lang/String;
    .param p5, "outputPortNames"    # [Ljava/lang/String;
    .param p6, "properties"    # Landroid/os/Bundle;
    .param p7, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p8, "serviceInfo"    # Landroid/content/pm/ServiceInfo;
    .param p9, "isPrivate"    # Z
    .param p10, "uid"    # I

    .prologue
    .line 755
    iget v3, p0, Lcom/android/server/midi/MidiService;->mNextDeviceId:I

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/android/server/midi/MidiService;->mNextDeviceId:I

    .line 756
    .local v3, "id":I
    new-instance v1, Landroid/media/midi/MidiDeviceInfo;

    move v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Landroid/media/midi/MidiDeviceInfo;-><init>(IIII[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 759
    .local v1, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    if-eqz p7, :cond_0

    .line 761
    :try_start_0
    move-object/from16 v0, p7

    invoke-interface {v0, v1}, Landroid/media/midi/IMidiDeviceServer;->setDeviceInfo(Landroid/media/midi/MidiDeviceInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    :cond_0
    const/4 v4, 0x0

    .line 769
    .local v4, "device":Lcom/android/server/midi/MidiService$Device;
    const/4 v10, 0x0

    .line 770
    .local v10, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 772
    const-string/jumbo v2, "bluetooth_device"

    .line 771
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    .end local v10    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    .line 773
    .local v10, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "device":Lcom/android/server/midi/MidiService$Device;
    check-cast v4, Lcom/android/server/midi/MidiService$Device;

    .line 774
    .local v4, "device":Lcom/android/server/midi/MidiService$Device;
    if-eqz v4, :cond_1

    .line 775
    invoke-virtual {v4, v1}, Lcom/android/server/midi/MidiService$Device;->setDeviceInfo(Landroid/media/midi/MidiDeviceInfo;)V

    .line 778
    .end local v4    # "device":Lcom/android/server/midi/MidiService$Device;
    .end local v10    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    if-nez v4, :cond_2

    .line 779
    new-instance v4, Lcom/android/server/midi/MidiService$Device;

    move-object v5, p0

    move-object/from16 v6, p7

    move-object v7, v1

    move-object/from16 v8, p8

    move/from16 v9, p10

    invoke-direct/range {v4 .. v9}, Lcom/android/server/midi/MidiService$Device;-><init>(Lcom/android/server/midi/MidiService;Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceInfo;Landroid/content/pm/ServiceInfo;I)V

    .line 781
    :cond_2
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    if-eqz v10, :cond_3

    .line 783
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {v2, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    :cond_3
    iget-object v5, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    monitor-enter v5

    .line 787
    :try_start_1
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/midi/MidiService$Client;

    .line 788
    .local v11, "c":Lcom/android/server/midi/MidiService$Client;
    invoke-virtual {v11, v4}, Lcom/android/server/midi/MidiService$Client;->deviceAdded(Lcom/android/server/midi/MidiService$Device;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 786
    .end local v11    # "c":Lcom/android/server/midi/MidiService$Client;
    .end local v12    # "c$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v5

    throw v2

    .line 762
    :catch_0
    move-exception v13

    .line 763
    .local v13, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MidiService"

    const-string/jumbo v5, "RemoteException in setDeviceInfo()"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const/4 v2, 0x0

    return-object v2

    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v12    # "c$iterator":Ljava/util/Iterator;
    :cond_4
    monitor-exit v5

    .line 792
    return-object v1
.end method

.method private addPackageDeviceServer(Landroid/content/pm/ServiceInfo;)V
    .locals 27
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .prologue
    .line 831
    const/16 v22, 0x0

    .line 834
    .local v22, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 835
    const-string/jumbo v3, "android.media.midi.MidiDeviceService"

    .line 834
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v22

    .line 836
    .local v22, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v22, :cond_1

    .line 961
    if-eqz v22, :cond_0

    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->close()V

    .line 836
    :cond_0
    return-void

    .line 839
    :cond_1
    :try_start_1
    const-string/jumbo v2, "android.permission.BIND_MIDI_DEVICE_SERVICE"

    .line 840
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 839
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 841
    const-string/jumbo v2, "MidiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Skipping MIDI device service "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 842
    const-string/jumbo v6, ": it does not require the permission "

    .line 841
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 843
    const-string/jumbo v6, "android.permission.BIND_MIDI_DEVICE_SERVICE"

    .line 841
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 961
    if-eqz v22, :cond_2

    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->close()V

    .line 844
    :cond_2
    return-void

    .line 847
    :cond_3
    const/4 v8, 0x0

    .line 848
    .local v8, "properties":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 849
    .local v4, "numInputPorts":I
    const/4 v5, 0x0

    .line 850
    .local v5, "numOutputPorts":I
    const/4 v11, 0x0

    .line 851
    .local v11, "isPrivate":Z
    :try_start_2
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 852
    .local v19, "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 855
    .end local v8    # "properties":Landroid/os/Bundle;
    .end local v11    # "isPrivate":Z
    .local v21, "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    :goto_0
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v17

    .line 856
    .local v17, "eventType":I
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_6

    .line 961
    if-eqz v22, :cond_5

    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->close()V

    .line 830
    .end local v4    # "numInputPorts":I
    .end local v5    # "numOutputPorts":I
    .end local v17    # "eventType":I
    .end local v19    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_5
    :goto_1
    return-void

    .line 858
    .restart local v4    # "numInputPorts":I
    .restart local v5    # "numOutputPorts":I
    .restart local v17    # "eventType":I
    .restart local v19    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_6
    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_12

    .line 859
    :try_start_3
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v24

    .line 860
    .local v24, "tagName":Ljava/lang/String;
    const-string/jumbo v2, "device"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 861
    if-eqz v8, :cond_7

    .line 862
    const-string/jumbo v2, "MidiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "nested <device> elements in metadata for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 863
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 862
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 958
    .end local v4    # "numInputPorts":I
    .end local v5    # "numOutputPorts":I
    .end local v17    # "eventType":I
    .end local v19    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v24    # "tagName":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 959
    .local v16, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v2, "MidiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to load component info "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ServiceInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 961
    if-eqz v22, :cond_5

    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 866
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v4    # "numInputPorts":I
    .restart local v5    # "numOutputPorts":I
    .restart local v17    # "eventType":I
    .restart local v19    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v24    # "tagName":Ljava/lang/String;
    :cond_7
    :try_start_5
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 867
    .local v8, "properties":Landroid/os/Bundle;
    const-string/jumbo v2, "service_info"

    move-object/from16 v0, p1

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 868
    const/4 v4, 0x0

    .line 869
    const/4 v5, 0x0

    .line 870
    const/4 v11, 0x0

    .line 872
    .restart local v11    # "isPrivate":Z
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v14

    .line 873
    .local v14, "count":I
    const/16 v18, 0x0

    .end local v11    # "isPrivate":Z
    .local v18, "i":I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v14, :cond_4

    .line 874
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v20

    .line 875
    .local v20, "name":Ljava/lang/String;
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v25

    .line 876
    .local v25, "value":Ljava/lang/String;
    const-string/jumbo v2, "private"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 877
    const-string/jumbo v2, "true"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 873
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 879
    :cond_8
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 960
    .end local v4    # "numInputPorts":I
    .end local v5    # "numOutputPorts":I
    .end local v8    # "properties":Landroid/os/Bundle;
    .end local v14    # "count":I
    .end local v17    # "eventType":I
    .end local v18    # "i":I
    .end local v19    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "name":Ljava/lang/String;
    .end local v21    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v24    # "tagName":Ljava/lang/String;
    .end local v25    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 961
    if-eqz v22, :cond_9

    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->close()V

    .line 960
    :cond_9
    throw v2

    .line 882
    .restart local v4    # "numInputPorts":I
    .restart local v5    # "numOutputPorts":I
    .restart local v17    # "eventType":I
    .restart local v19    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v24    # "tagName":Ljava/lang/String;
    :cond_a
    :try_start_6
    const-string/jumbo v2, "input-port"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 883
    if-nez v8, :cond_b

    .line 884
    const-string/jumbo v2, "MidiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<input-port> outside of <device> in metadata for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 885
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 884
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 888
    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 890
    const/16 v23, 0x0

    .line 891
    .local v23, "portName":Ljava/lang/String;
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v14

    .line 892
    .restart local v14    # "count":I
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_4
    move/from16 v0, v18

    if-ge v0, v14, :cond_c

    .line 893
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v20

    .line 894
    .restart local v20    # "name":Ljava/lang/String;
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v25

    .line 895
    .restart local v25    # "value":Ljava/lang/String;
    const-string/jumbo v2, "name"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 896
    move-object/from16 v23, v25

    .line 900
    .end local v20    # "name":Ljava/lang/String;
    .end local v23    # "portName":Ljava/lang/String;
    .end local v25    # "value":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 892
    .restart local v20    # "name":Ljava/lang/String;
    .restart local v23    # "portName":Ljava/lang/String;
    .restart local v25    # "value":Ljava/lang/String;
    :cond_d
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 901
    .end local v14    # "count":I
    .end local v18    # "i":I
    .end local v20    # "name":Ljava/lang/String;
    .end local v23    # "portName":Ljava/lang/String;
    .end local v25    # "value":Ljava/lang/String;
    :cond_e
    const-string/jumbo v2, "output-port"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 902
    if-nez v8, :cond_f

    .line 903
    const-string/jumbo v2, "MidiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<output-port> outside of <device> in metadata for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 904
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 903
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 907
    :cond_f
    add-int/lit8 v5, v5, 0x1

    .line 909
    const/16 v23, 0x0

    .line 910
    .restart local v23    # "portName":Ljava/lang/String;
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v14

    .line 911
    .restart local v14    # "count":I
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_5
    move/from16 v0, v18

    if-ge v0, v14, :cond_10

    .line 912
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v20

    .line 913
    .restart local v20    # "name":Ljava/lang/String;
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v25

    .line 914
    .restart local v25    # "value":Ljava/lang/String;
    const-string/jumbo v2, "name"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 915
    move-object/from16 v23, v25

    .line 919
    .end local v20    # "name":Ljava/lang/String;
    .end local v23    # "portName":Ljava/lang/String;
    .end local v25    # "value":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 911
    .restart local v20    # "name":Ljava/lang/String;
    .restart local v23    # "portName":Ljava/lang/String;
    .restart local v25    # "value":Ljava/lang/String;
    :cond_11
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 921
    .end local v14    # "count":I
    .end local v18    # "i":I
    .end local v20    # "name":Ljava/lang/String;
    .end local v23    # "portName":Ljava/lang/String;
    .end local v24    # "tagName":Ljava/lang/String;
    .end local v25    # "value":Ljava/lang/String;
    :cond_12
    const/4 v2, 0x3

    move/from16 v0, v17

    if-ne v0, v2, :cond_4

    .line 922
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v24

    .line 923
    .restart local v24    # "tagName":Ljava/lang/String;
    const-string/jumbo v2, "device"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 924
    if-eqz v8, :cond_4

    .line 925
    if-nez v4, :cond_13

    if-nez v5, :cond_13

    .line 926
    const-string/jumbo v2, "MidiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<device> with no ports in metadata for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 927
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 926
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 933
    :cond_13
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 934
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    .line 933
    invoke-virtual {v2, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    .line 935
    .local v13, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v12, v13, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 942
    .local v12, "uid":I
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    move-object/from16 v26, v0

    monitor-enter v26
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 945
    :try_start_9
    sget-object v2, Lcom/android/server/midi/MidiService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 946
    sget-object v2, Lcom/android/server/midi/MidiService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 943
    const/4 v3, 0x2

    .line 947
    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v10, p1

    .line 943
    invoke-direct/range {v2 .. v12}, Lcom/android/server/midi/MidiService;->addDeviceLocked(III[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/media/midi/IMidiDeviceServer;Landroid/content/pm/ServiceInfo;ZI)Landroid/media/midi/MidiDeviceInfo;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    monitor-exit v26

    .line 951
    const/4 v8, 0x0

    .line 952
    .local v8, "properties":Landroid/os/Bundle;
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 953
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 936
    .end local v8    # "properties":Landroid/os/Bundle;
    .end local v12    # "uid":I
    .end local v13    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v15

    .line 937
    .local v15, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "MidiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "could not fetch ApplicationInfo for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 938
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 937
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 942
    .end local v15    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v12    # "uid":I
    .restart local v13    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catchall_1
    move-exception v2

    monitor-exit v26

    throw v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method private addPackageDeviceServers(Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 814
    :try_start_0
    iget-object v4, p0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 815
    const/16 v5, 0x84

    .line 814
    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 821
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 822
    .local v3, "services":[Landroid/content/pm/ServiceInfo;
    if-nez v3, :cond_0

    return-void

    .line 816
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "services":[Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v0

    .line 817
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "MidiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handlePackageUpdate could not find package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 818
    return-void

    .line 823
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    .restart local v3    # "services":[Landroid/content/pm/ServiceInfo;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 824
    aget-object v4, v3, v1

    invoke-direct {p0, v4}, Lcom/android/server/midi/MidiService;->addPackageDeviceServer(Landroid/content/pm/ServiceInfo;)V

    .line 823
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 810
    :cond_1
    return-void
.end method

.method private getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x0

    .line 258
    iget-object v3, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    monitor-enter v3

    .line 259
    :try_start_0
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Client;

    .line 260
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v0, :cond_0

    .line 261
    new-instance v0, Lcom/android/server/midi/MidiService$Client;

    .end local v0    # "client":Lcom/android/server/midi/MidiService$Client;
    invoke-direct {v0, p0, p1}, Lcom/android/server/midi/MidiService$Client;-><init>(Lcom/android/server/midi/MidiService;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    .restart local v0    # "client":Lcom/android/server/midi/MidiService$Client;
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    :try_start_2
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit v3

    .line 270
    return-object v0

    .line 265
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    monitor-exit v3

    .line 266
    return-object v4

    .line 258
    .end local v0    # "client":Lcom/android/server/midi/MidiService$Client;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private notifyDeviceStatusChanged(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/MidiDeviceStatus;)V
    .locals 4
    .param p1, "device"    # Lcom/android/server/midi/MidiService$Device;
    .param p2, "status"    # Landroid/media/midi/MidiDeviceStatus;

    .prologue
    .line 742
    iget-object v3, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    monitor-enter v3

    .line 743
    :try_start_0
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Client;

    .line 744
    .local v0, "c":Lcom/android/server/midi/MidiService$Client;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/midi/MidiService$Client;->deviceStatusChanged(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/MidiDeviceStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 742
    .end local v0    # "c":Lcom/android/server/midi/MidiService$Client;
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "c$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 741
    return-void
.end method

.method private removeDeviceLocked(Lcom/android/server/midi/MidiService$Device;)V
    .locals 5
    .param p1, "device"    # Lcom/android/server/midi/MidiService$Device;

    .prologue
    .line 797
    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$Device;->getDeviceServer()Landroid/media/midi/IMidiDeviceServer;

    move-result-object v2

    .line 798
    .local v2, "server":Landroid/media/midi/IMidiDeviceServer;
    if-eqz v2, :cond_0

    .line 799
    iget-object v3, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    invoke-interface {v2}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    :cond_0
    iget-object v3, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    iget-object v4, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    monitor-enter v4

    .line 804
    :try_start_0
    iget-object v3, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Client;

    .line 805
    .local v0, "c":Lcom/android/server/midi/MidiService$Client;
    invoke-virtual {v0, p1}, Lcom/android/server/midi/MidiService$Client;->deviceRemoved(Lcom/android/server/midi/MidiService$Device;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 803
    .end local v0    # "c":Lcom/android/server/midi/MidiService$Client;
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v1    # "c$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 796
    return-void
.end method

.method private removePackageDeviceServers(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 966
    iget-object v3, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v3

    .line 967
    :try_start_0
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 968
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/midi/MidiService$Device;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 969
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    .line 970
    .local v0, "device":Lcom/android/server/midi/MidiService$Device;
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 971
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 972
    invoke-direct {p0, v0}, Lcom/android/server/midi/MidiService;->removeDeviceLocked(Lcom/android/server/midi/MidiService$Device;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 966
    .end local v0    # "device":Lcom/android/server/midi/MidiService$Device;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/midi/MidiService$Device;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/midi/MidiService$Device;>;"
    :cond_1
    monitor-exit v3

    .line 965
    return-void
.end method


# virtual methods
.method public closeDevice(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "clientToken"    # Landroid/os/IBinder;
    .param p2, "deviceToken"    # Landroid/os/IBinder;

    .prologue
    .line 672
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object v0

    .line 673
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v0, :cond_0

    return-void

    .line 674
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/midi/MidiService$Client;->removeDeviceConnection(Landroid/os/IBinder;)V

    .line 671
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 980
    iget-object v5, p0, Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.DUMP"

    const-string/jumbo v7, "MidiService"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v5, "  "

    invoke-direct {v4, p2, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 983
    .local v4, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string/jumbo v5, "MIDI Manager State:"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 984
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 986
    const-string/jumbo v5, "Devices:"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 987
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 988
    iget-object v6, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v6

    .line 989
    :try_start_0
    iget-object v5, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "device$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/midi/MidiService$Device;

    .line 990
    .local v2, "device":Lcom/android/server/midi/MidiService$Device;
    invoke-virtual {v2}, Lcom/android/server/midi/MidiService$Device;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 988
    .end local v2    # "device":Lcom/android/server/midi/MidiService$Device;
    .end local v3    # "device$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .restart local v3    # "device$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v6

    .line 993
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 995
    const-string/jumbo v5, "Clients:"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 996
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 997
    iget-object v6, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    monitor-enter v6

    .line 998
    :try_start_1
    iget-object v5, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "client$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Client;

    .line 999
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Client;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 997
    .end local v0    # "client":Lcom/android/server/midi/MidiService$Client;
    .end local v1    # "client$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5

    .restart local v1    # "client$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v6

    .line 1002
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 979
    return-void
.end method

.method public getDeviceStatus(Landroid/media/midi/MidiDeviceInfo;)Landroid/media/midi/MidiDeviceStatus;
    .locals 4
    .param p1, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;

    .prologue
    .line 721
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    .line 722
    .local v0, "device":Lcom/android/server/midi/MidiService$Device;
    if-nez v0, :cond_0

    .line 723
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no such device for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 725
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getDeviceStatus()Landroid/media/midi/MidiDeviceStatus;

    move-result-object v1

    return-object v1
.end method

.method public getDevices()[Landroid/media/midi/MidiDeviceInfo;
    .locals 6

    .prologue
    .line 605
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 606
    .local v2, "deviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/midi/MidiDeviceInfo;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 608
    .local v3, "uid":I
    iget-object v5, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v5

    .line 609
    :try_start_0
    iget-object v4, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    .line 610
    .local v0, "device":Lcom/android/server/midi/MidiService$Device;
    invoke-virtual {v0, v3}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 611
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 608
    .end local v0    # "device":Lcom/android/server/midi/MidiService$Device;
    .end local v1    # "device$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v1    # "device$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v5

    .line 616
    sget-object v4, Lcom/android/server/midi/MidiService;->EMPTY_DEVICE_INFO_ARRAY:[Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/media/midi/MidiDeviceInfo;

    return-object v4
.end method

.method public getServiceDeviceInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/media/midi/MidiDeviceInfo;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 706
    iget-object v4, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v4

    .line 707
    :try_start_0
    iget-object v3, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    .line 708
    .local v0, "device":Lcom/android/server/midi/MidiService$Device;
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    .line 709
    .local v2, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v2, :cond_0

    .line 710
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 709
    if-eqz v3, :cond_0

    .line 711
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 709
    if-eqz v3, :cond_0

    .line 712
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    monitor-exit v4

    return-object v3

    .end local v0    # "device":Lcom/android/server/midi/MidiService$Device;
    .end local v2    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_1
    monitor-exit v4

    .line 715
    return-object v5

    .line 706
    .end local v1    # "device$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public openBluetoothDevice(Landroid/os/IBinder;Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "callback"    # Landroid/media/midi/IMidiDeviceOpenCallback;

    .prologue
    .line 648
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object v0

    .line 649
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v0, :cond_0

    return-void

    .line 653
    :cond_0
    iget-object v5, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v5

    .line 654
    :try_start_0
    iget-object v4, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/midi/MidiService$Device;

    .line 655
    .local v1, "device":Lcom/android/server/midi/MidiService$Device;
    if-nez v1, :cond_1

    .line 656
    new-instance v1, Lcom/android/server/midi/MidiService$Device;

    .end local v1    # "device":Lcom/android/server/midi/MidiService$Device;
    invoke-direct {v1, p0, p2}, Lcom/android/server/midi/MidiService$Device;-><init>(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    .line 657
    .restart local v1    # "device":Lcom/android/server/midi/MidiService$Device;
    iget-object v4, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {v4, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v5

    .line 662
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 664
    .local v2, "identity":J
    :try_start_1
    invoke-virtual {v0, v1, p3}, Lcom/android/server/midi/MidiService$Client;->addDeviceConnection(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 666
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 647
    return-void

    .line 653
    .end local v1    # "device":Lcom/android/server/midi/MidiService$Device;
    .end local v2    # "identity":J
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 665
    .restart local v1    # "device":Lcom/android/server/midi/MidiService$Device;
    .restart local v2    # "identity":J
    :catchall_1
    move-exception v4

    .line 666
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 665
    throw v4
.end method

.method public openDevice(Landroid/os/IBinder;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;
    .param p3, "callback"    # Landroid/media/midi/IMidiDeviceOpenCallback;

    .prologue
    .line 622
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object v0

    .line 623
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v0, :cond_0

    return-void

    .line 626
    :cond_0
    iget-object v5, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v5

    .line 627
    :try_start_0
    iget-object v4, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/midi/MidiService$Device;

    .line 628
    .local v1, "device":Lcom/android/server/midi/MidiService$Device;
    if-nez v1, :cond_1

    .line 629
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "device does not exist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    .end local v1    # "device":Lcom/android/server/midi/MidiService$Device;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 631
    .restart local v1    # "device":Lcom/android/server/midi/MidiService$Device;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 632
    new-instance v4, Ljava/lang/SecurityException;

    const-string/jumbo v6, "Attempt to open private device with wrong UID"

    invoke-direct {v4, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v5

    .line 637
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 639
    .local v2, "identity":J
    :try_start_2
    invoke-virtual {v0, v1, p3}, Lcom/android/server/midi/MidiService$Client;->addDeviceConnection(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 641
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 621
    return-void

    .line 640
    :catchall_1
    move-exception v4

    .line 641
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 640
    throw v4
.end method

.method public registerDeviceServer(Landroid/media/midi/IMidiDeviceServer;II[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;I)Landroid/media/midi/MidiDeviceInfo;
    .locals 13
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p2, "numInputPorts"    # I
    .param p3, "numOutputPorts"    # I
    .param p4, "inputPortNames"    # [Ljava/lang/String;
    .param p5, "outputPortNames"    # [Ljava/lang/String;
    .param p6, "properties"    # Landroid/os/Bundle;
    .param p7, "type"    # I

    .prologue
    .line 681
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 682
    .local v11, "uid":I
    const/4 v1, 0x1

    move/from16 v0, p7

    if-ne v0, v1, :cond_0

    const/16 v1, 0x3e8

    if-eq v11, v1, :cond_0

    .line 683
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "only system can create USB devices"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 684
    :cond_0
    const/4 v1, 0x3

    move/from16 v0, p7

    if-ne v0, v1, :cond_1

    iget v1, p0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    if-eq v11, v1, :cond_1

    .line 685
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "only MidiBluetoothService can create Bluetooth devices"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 688
    :cond_1
    iget-object v12, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v12

    .line 690
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move/from16 v2, p7

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, p1

    .line 689
    :try_start_0
    invoke-direct/range {v1 .. v11}, Lcom/android/server/midi/MidiService;->addDeviceLocked(III[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/media/midi/IMidiDeviceServer;Landroid/content/pm/ServiceInfo;ZI)Landroid/media/midi/MidiDeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v12

    return-object v1

    .line 688
    :catchall_0
    move-exception v1

    monitor-exit v12

    throw v1
.end method

.method public registerListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "listener"    # Landroid/media/midi/IMidiDeviceListener;

    .prologue
    .line 590
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object v0

    .line 591
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v0, :cond_0

    return-void

    .line 592
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/midi/MidiService$Client;->addListener(Landroid/media/midi/IMidiDeviceListener;)V

    .line 589
    return-void
.end method

.method public setDeviceStatus(Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V
    .locals 4
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p2, "status"    # Landroid/media/midi/MidiDeviceStatus;

    .prologue
    .line 730
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    .line 731
    .local v0, "device":Lcom/android/server/midi/MidiService$Device;
    if-eqz v0, :cond_1

    .line 732
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getUid()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 733
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDeviceStatus() caller UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 734
    const-string/jumbo v3, " does not match device\'s UID "

    .line 733
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 734
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getUid()I

    move-result v3

    .line 733
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 736
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/midi/MidiService$Device;->setDeviceStatus(Landroid/media/midi/MidiDeviceStatus;)V

    .line 737
    invoke-direct {p0, v0, p2}, Lcom/android/server/midi/MidiService;->notifyDeviceStatusChanged(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/MidiDeviceStatus;)V

    .line 729
    :cond_1
    return-void
.end method

.method public unregisterDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V
    .locals 4
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;

    .prologue
    .line 696
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v2

    .line 697
    :try_start_0
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    .line 698
    .local v0, "device":Lcom/android/server/midi/MidiService$Device;
    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->closeLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 695
    return-void

    .line 696
    .end local v0    # "device":Lcom/android/server/midi/MidiService$Device;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public unregisterListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "listener"    # Landroid/media/midi/IMidiDeviceListener;

    .prologue
    .line 597
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object v0

    .line 598
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v0, :cond_0

    return-void

    .line 599
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/midi/MidiService$Client;->removeListener(Landroid/media/midi/IMidiDeviceListener;)V

    .line 596
    return-void
.end method
