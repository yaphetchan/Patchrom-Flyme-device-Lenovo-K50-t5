.class Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateStart;
.super Lcom/android/internal/util/State;
.source "RilMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateStart"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateStart;->this$0:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateStart;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateStart;-><init>(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 137
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_1

    .line 138
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateStart;->this$0:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/RilMessage;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->-wrap0(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/telephony/cdma/utk/RilMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateStart;->this$0:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateStart;->this$0:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->-get1(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;)Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->-wrap3(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/util/IState;)V

    .line 145
    :cond_0
    :goto_0
    return v2

    .line 142
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StateStart unexpected expecting START=1 got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 143
    iget v1, p1, Landroid/os/Message;->what:I

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
