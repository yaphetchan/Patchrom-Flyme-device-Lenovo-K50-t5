.class public Lcom/android/internal/util/StateMachine$LogRec;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogRec"
.end annotation


# instance fields
.field private mDstState:Lcom/android/internal/util/IState;

.field private mInfo:Ljava/lang/String;

.field private mOrgState:Lcom/android/internal/util/IState;

.field private mSm:Lcom/android/internal/util/StateMachine;

.field private mState:Lcom/android/internal/util/IState;

.field private mTime:J

.field private mWhat:I


# direct methods
.method constructor <init>(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "sm"    # Lcom/android/internal/util/StateMachine;
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "info"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/util/IState;
    .param p5, "orgState"    # Lcom/android/internal/util/IState;
    .param p6, "transToState"    # Lcom/android/internal/util/IState;

    .prologue
    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/util/StateMachine$LogRec;->update(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V

    .line 470
    return-void
.end method


# virtual methods
.method public getDestState()Lcom/android/internal/util/IState;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRec;->mDstState:Lcom/android/internal/util/IState;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRec;->mInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalState()Lcom/android/internal/util/IState;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRec;->mOrgState:Lcom/android/internal/util/IState;

    return-object v0
.end method

.method public getState()Lcom/android/internal/util/IState;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRec;->mState:Lcom/android/internal/util/IState;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 493
    iget-wide v0, p0, Lcom/android/internal/util/StateMachine$LogRec;->mTime:J

    return-wide v0
.end method

.method public getWhat()J
    .locals 2

    .prologue
    .line 500
    iget v0, p0, Lcom/android/internal/util/StateMachine$LogRec;->mWhat:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "time="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 536
    .local v0, "c":Ljava/util/Calendar;
    iget-wide v4, p0, Lcom/android/internal/util/StateMachine$LogRec;->mTime:J

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 537
    const-string v3, "%tm-%td %tH:%tM:%tS.%tL"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    const/4 v5, 0x4

    aput-object v0, v4, v5

    const/4 v5, 0x5

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    const-string v3, " processed="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mState:Lcom/android/internal/util/IState;

    if-nez v3, :cond_1

    const-string v3, "<null>"

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    const-string v3, " org="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mOrgState:Lcom/android/internal/util/IState;

    if-nez v3, :cond_2

    const-string v3, "<null>"

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    const-string v3, " dest="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mDstState:Lcom/android/internal/util/IState;

    if-nez v3, :cond_3

    const-string v3, "<null>"

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    const-string v3, " what="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mSm:Lcom/android/internal/util/StateMachine;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mSm:Lcom/android/internal/util/StateMachine;

    iget v4, p0, Lcom/android/internal/util/StateMachine$LogRec;->mWhat:I

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->getWhatToString(I)Ljava/lang/String;

    move-result-object v2

    .line 546
    .local v2, "what":Ljava/lang/String;
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 547
    iget v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mWhat:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 548
    const-string v3, "(0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    iget v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mWhat:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    :goto_4
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mInfo:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 555
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mInfo:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 539
    .end local v2    # "what":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mState:Lcom/android/internal/util/IState;

    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 541
    :cond_2
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mOrgState:Lcom/android/internal/util/IState;

    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 543
    :cond_3
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mDstState:Lcom/android/internal/util/IState;

    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 545
    :cond_4
    const-string v2, ""

    goto :goto_3

    .line 552
    .restart local v2    # "what":Ljava/lang/String;
    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method public update(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V
    .locals 2
    .param p1, "sm"    # Lcom/android/internal/util/StateMachine;
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "info"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/util/IState;
    .param p5, "orgState"    # Lcom/android/internal/util/IState;
    .param p6, "dstState"    # Lcom/android/internal/util/IState;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/android/internal/util/StateMachine$LogRec;->mSm:Lcom/android/internal/util/StateMachine;

    .line 481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/util/StateMachine$LogRec;->mTime:J

    .line 482
    if-eqz p2, :cond_0

    iget v0, p2, Landroid/os/Message;->what:I

    :goto_0
    iput v0, p0, Lcom/android/internal/util/StateMachine$LogRec;->mWhat:I

    .line 483
    iput-object p3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mInfo:Ljava/lang/String;

    .line 484
    iput-object p4, p0, Lcom/android/internal/util/StateMachine$LogRec;->mState:Lcom/android/internal/util/IState;

    .line 485
    iput-object p5, p0, Lcom/android/internal/util/StateMachine$LogRec;->mOrgState:Lcom/android/internal/util/IState;

    .line 486
    iput-object p6, p0, Lcom/android/internal/util/StateMachine$LogRec;->mDstState:Lcom/android/internal/util/IState;

    .line 487
    return-void

    .line 482
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
