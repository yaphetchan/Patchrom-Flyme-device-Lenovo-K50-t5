.class public Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;
.super Landroid/content/ContextWrapper;
.source "PplSmsFilterExtension.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/ppl/IPplSmsFilter;


# annotations
.annotation runtime Lcom/mediatek/common/PluginImpl;
    interfaceName = "com.mediatek.internal.telephony.ppl.IPplSmsFilter"
.end annotation


# static fields
.field public static final INSTRUCTION_KEY_FROM:Ljava/lang/String; = "From"

.field public static final INSTRUCTION_KEY_SIM_ID:Ljava/lang/String; = "SimId"

.field public static final INSTRUCTION_KEY_TO:Ljava/lang/String; = "To"

.field public static final INSTRUCTION_KEY_TYPE:Ljava/lang/String; = "Type"

.field public static final INTENT_REMOTE_INSTRUCTION_RECEIVED:Ljava/lang/String; = "com.mediatek.ppl.REMOTE_INSTRUCTION_RECEIVED"

.field private static final TAG:Ljava/lang/String; = "PPL/PplSmsFilterExtension"


# instance fields
.field private final mAgent:Lcom/mediatek/internal/telephony/ppl/IPplAgent;

.field private final mEnabled:Z

.field private final mMessageManager:Lcom/mediatek/internal/telephony/ppl/PplMessageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 40
    const-string/jumbo v1, "PPL/PplSmsFilterExtension"

    const-string/jumbo v2, "PplSmsFilterExtension enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "ro.mtk_privacy_protection_lock"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->mAgent:Lcom/mediatek/internal/telephony/ppl/IPplAgent;

    .line 43
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->mMessageManager:Lcom/mediatek/internal/telephony/ppl/PplMessageManager;

    .line 44
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->mEnabled:Z

    .line 45
    return-void

    .line 48
    :cond_0
    const-string/jumbo v1, "PPLAgent"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 49
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 50
    const-string/jumbo v1, "PPL/PplSmsFilterExtension"

    const-string/jumbo v2, "Failed to get PPLAgent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->mAgent:Lcom/mediatek/internal/telephony/ppl/IPplAgent;

    .line 52
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->mMessageManager:Lcom/mediatek/internal/telephony/ppl/PplMessageManager;

    .line 53
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->mEnabled:Z

    .line 54
    return-void

    .line 57
    :cond_1
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ppl/IPplAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ppl/IPplAgent;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->mAgent:Lcom/mediatek/internal/telephony/ppl/IPplAgent;

    .line 58
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->mAgent:Lcom/mediatek/internal/telephony/ppl/IPplAgent;

    if-nez v1, :cond_2

    .line 59
    const-string/jumbo v1, "PPL/PplSmsFilterExtension"

    const-string/jumbo v2, "mAgent is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->mMessageManager:Lcom/mediatek/internal/telephony/ppl/PplMessageManager;

    .line 61
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->mEnabled:Z

    .line 62
    return-void

    .line 65
    :cond_2
    new-instance v1, Lcom/mediatek/internal/telephony/ppl/PplMessageManager;

    invoke-direct {v1, p1}, Lcom/mediatek/internal/telephony/ppl/PplMessageManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->mMessageManager:Lcom/mediatek/internal/telephony/ppl/PplMessageManager;

    .line 66
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->mEnabled:Z

    .line 67
    const-string/jumbo v1, "PPL/PplSmsFilterExtension"

    const-string/jumbo v2, "PplSmsFilterExtension exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method

.method private matchNumber(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 171
    .local p2, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 172
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "s$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    const/4 v2, 0x1

    return v2

    .line 178
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "s$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public pplFilter(Landroid/os/Bundle;)Z
    .locals 22
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 72
    const-string/jumbo v19, "PPL/PplSmsFilterExtension"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "pplFilter("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->mEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 74
    const-string/jumbo v19, "PPL/PplSmsFilterExtension"

    const-string/jumbo v20, "pplFilter returns false: feature not enabled"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/16 v19, 0x0

    return v19

    .line 78
    :cond_0
    const-string/jumbo v19, "format"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, "format":Ljava/lang/String;
    const-string/jumbo v19, "smsType"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    const/4 v11, 0x1

    .line 81
    .local v11, "isMO":Z
    :goto_0
    const-string/jumbo v19, "subId"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 82
    .local v18, "subId":I
    invoke-static/range {v18 .. v18}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v16

    .line 83
    .local v16, "simId":I
    const-string/jumbo v19, "PPL/PplSmsFilterExtension"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "subId = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ". simId = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string/jumbo v19, "pdus"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v12

    check-cast v12, [Ljava/lang/Object;

    .line 86
    .local v12, "messages":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 87
    .local v5, "dst":Ljava/lang/String;
    const/16 v17, 0x0

    .line 88
    .local v17, "src":Ljava/lang/String;
    const/4 v3, 0x0

    .line 90
    .local v3, "content":Ljava/lang/String;
    if-nez v12, :cond_2

    .line 91
    const-string/jumbo v19, "msgContent"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "content":Ljava/lang/String;
    const-string/jumbo v19, "srdAddr"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 93
    .local v17, "src":Ljava/lang/String;
    const-string/jumbo v19, "dstAddr"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 94
    .local v5, "dst":Ljava/lang/String;
    const-string/jumbo v19, "PPL/PplSmsFilterExtension"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "pplFilter: Read msg directly and content is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_1
    if-nez v3, :cond_5

    .line 116
    const-string/jumbo v19, "PPL/PplSmsFilterExtension"

    const-string/jumbo v20, "pplFilter returns false: content is null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/16 v19, 0x0

    return v19

    .line 79
    .end local v3    # "content":Ljava/lang/String;
    .end local v5    # "dst":Ljava/lang/String;
    .end local v11    # "isMO":Z
    .end local v12    # "messages":[Ljava/lang/Object;
    .end local v16    # "simId":I
    .end local v17    # "src":Ljava/lang/String;
    .end local v18    # "subId":I
    :cond_1
    const/4 v11, 0x0

    .restart local v11    # "isMO":Z
    goto/16 :goto_0

    .line 96
    .local v3, "content":Ljava/lang/String;
    .local v5, "dst":Ljava/lang/String;
    .restart local v12    # "messages":[Ljava/lang/Object;
    .restart local v16    # "simId":I
    .local v17, "src":Ljava/lang/String;
    .restart local v18    # "subId":I
    :cond_2
    array-length v0, v12

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v15, v0, [[B

    .line 97
    .local v15, "pdus":[[B
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    array-length v0, v12

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_3

    .line 98
    aget-object v19, v12, v8

    check-cast v19, [B

    aput-object v19, v15, v8

    .line 97
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 100
    :cond_3
    array-length v14, v15

    .line 101
    .local v14, "pduCount":I
    new-array v13, v14, [Landroid/telephony/SmsMessage;

    .line 102
    .local v13, "msgs":[Landroid/telephony/SmsMessage;
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v14, :cond_4

    .line 103
    aget-object v19, v15, v8

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v19

    aput-object v19, v13, v8

    .line 102
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 106
    :cond_4
    const-string/jumbo v19, "PPL/PplSmsFilterExtension"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "pplFilter: pdus is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " with length "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    array-length v0, v15

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string/jumbo v19, "PPL/PplSmsFilterExtension"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "pplFilter: pdus[0] is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v21, v15, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/16 v19, 0x0

    aget-object v19, v13, v19

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "content":Ljava/lang/String;
    const-string/jumbo v19, "PPL/PplSmsFilterExtension"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "pplFilter: message content is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/16 v19, 0x0

    aget-object v19, v13, v19

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v17

    .line 112
    .local v17, "src":Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v19, v13, v19

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SmsMessage;->getDestinationAddress()Ljava/lang/String;

    move-result-object v5

    .local v5, "dst":Ljava/lang/String;
    goto/16 :goto_1

    .line 120
    .end local v8    # "i":I
    .end local v13    # "msgs":[Landroid/telephony/SmsMessage;
    .end local v14    # "pduCount":I
    .end local v15    # "pdus":[[B
    :cond_5
    const/4 v4, 0x0

    .line 122
    .local v4, "controlData":Lcom/mediatek/internal/telephony/ppl/PplControlData;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->mAgent:Lcom/mediatek/internal/telephony/ppl/IPplAgent;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/mediatek/internal/telephony/ppl/IPplAgent;->readControlData()[B

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/mediatek/internal/telephony/ppl/PplControlData;->buildControlData([B)Lcom/mediatek/internal/telephony/ppl/PplControlData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 129
    .local v4, "controlData":Lcom/mediatek/internal/telephony/ppl/PplControlData;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ppl/PplControlData;->isEnabled()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 134
    if-eqz v11, :cond_7

    .line 135
    const-string/jumbo v19, "PPL/PplSmsFilterExtension"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "pplFilter: dst is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, v4, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v5, v1}, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->matchNumber(Ljava/lang/String;Ljava/util/List;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 137
    const-string/jumbo v19, "PPL/PplSmsFilterExtension"

    const-string/jumbo v20, "pplFilter returns false: MO number does not match"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/16 v19, 0x0

    return v19

    .line 123
    .local v4, "controlData":Lcom/mediatek/internal/telephony/ppl/PplControlData;
    :catch_0
    move-exception v6

    .line 124
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 125
    const-string/jumbo v19, "PPL/PplSmsFilterExtension"

    const-string/jumbo v20, "pplFilter returns false: failed to build control data"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/16 v19, 0x0

    return v19

    .line 130
    .end local v6    # "e":Landroid/os/RemoteException;
    .local v4, "controlData":Lcom/mediatek/internal/telephony/ppl/PplControlData;
    :cond_6
    const-string/jumbo v19, "PPL/PplSmsFilterExtension"

    const-string/jumbo v20, "pplFilter returns false: control data is null or ppl is not enabled"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/16 v19, 0x0

    return v19

    .line 141
    :cond_7
    const-string/jumbo v19, "PPL/PplSmsFilterExtension"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "pplFilter: src is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, v4, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->matchNumber(Ljava/lang/String;Ljava/util/List;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 143
    const-string/jumbo v19, "PPL/PplSmsFilterExtension"

    const-string/jumbo v20, "pplFilter returns false: MT number does not match"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/16 v19, 0x0

    return v19

    .line 148
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->mMessageManager:Lcom/mediatek/internal/telephony/ppl/PplMessageManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ppl/PplMessageManager;->getMessageType(Ljava/lang/String;)B

    move-result v9

    .line 149
    .local v9, "instruction":B
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_9

    .line 150
    const-string/jumbo v19, "PPL/PplSmsFilterExtension"

    const-string/jumbo v20, "pplFilter returns false: message is not matched"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/16 v19, 0x0

    return v19

    .line 154
    :cond_9
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v19, "com.mediatek.ppl.REMOTE_INSTRUCTION_RECEIVED"

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v19, "com.mediatek.ppl"

    const-string/jumbo v20, "com.mediatek.ppl.PplService"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string/jumbo v19, "Type"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 157
    const-string/jumbo v19, "SimId"

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    if-eqz v11, :cond_a

    .line 160
    const-string/jumbo v19, "To"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    :goto_4
    const-string/jumbo v19, "PPL/PplSmsFilterExtension"

    const-string/jumbo v20, "start PPL Service"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 167
    const/16 v19, 0x1

    return v19

    .line 162
    :cond_a
    const-string/jumbo v19, "From"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4
.end method
