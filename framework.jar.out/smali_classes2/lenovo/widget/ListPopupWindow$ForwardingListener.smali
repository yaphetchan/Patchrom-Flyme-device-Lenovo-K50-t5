.class public abstract Llenovo/widget/ListPopupWindow$ForwardingListener;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ForwardingListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;,
        Llenovo/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mDisallowIntercept:Ljava/lang/Runnable;

.field private mForwarding:Z

.field private final mLongPressTimeout:I

.field private final mScaledTouchSlop:F

.field private final mSrc:Landroid/view/View;

.field private final mTapTimeout:I

.field private final mTmpLocation:[I

.field private mTriggerLongPress:Ljava/lang/Runnable;

.field private mWasLongPress:Z


# direct methods
.method static synthetic -get0(Llenovo/widget/ListPopupWindow$ForwardingListener;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -wrap0(Llenovo/widget/ListPopupWindow$ForwardingListener;)V
    .locals 0

    invoke-direct {p0}, Llenovo/widget/ListPopupWindow$ForwardingListener;->onLongPress()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "src"    # Landroid/view/View;

    .prologue
    .line 1237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1235
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mTmpLocation:[I

    .line 1238
    iput-object p1, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1239
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mScaledTouchSlop:F

    .line 1240
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mTapTimeout:I

    .line 1242
    iget v0, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mTapTimeout:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mLongPressTimeout:I

    .line 1237
    return-void
.end method

.method private clearCallbacks()V
    .locals 2

    .prologue
    .line 1367
    iget-object v0, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1368
    iget-object v0, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1371
    :cond_0
    iget-object v0, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1372
    iget-object v0, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1366
    :cond_1
    return-void
.end method

.method private onLongPress()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    .line 1377
    invoke-direct {p0}, Llenovo/widget/ListPopupWindow$ForwardingListener;->clearCallbacks()V

    .line 1379
    iget-object v9, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1380
    .local v9, "src":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1381
    return-void

    .line 1384
    :cond_0
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow$ForwardingListener;->onForwardingStarted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1385
    return-void

    .line 1389
    :cond_1
    iget-object v2, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v10}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1392
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1393
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1394
    .local v8, "e":Landroid/view/MotionEvent;
    iget-object v2, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1395
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1397
    iput-boolean v10, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mForwarding:Z

    .line 1398
    iput-boolean v10, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mWasLongPress:Z

    .line 1376
    return-void
.end method

.method private onTouchForwarded(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "srcEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    .line 1408
    iget-object v6, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1409
    .local v6, "src":Landroid/view/View;
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow$ForwardingListener;->getPopup()Llenovo/widget/ListPopupWindow;

    move-result-object v5

    .line 1410
    .local v5, "popup":Llenovo/widget/ListPopupWindow;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Llenovo/widget/ListPopupWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1414
    invoke-static {v5}, Llenovo/widget/ListPopupWindow;->-get0(Llenovo/widget/ListPopupWindow;)Llenovo/widget/ListPopupWindow$DropDownListView;

    move-result-object v1

    .line 1415
    .local v1, "dst":Llenovo/widget/ListPopupWindow$DropDownListView;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Llenovo/widget/ListPopupWindow$DropDownListView;->isShown()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1420
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 1421
    .local v2, "dstEvent":Landroid/view/MotionEvent;
    invoke-direct {p0, v6, v2}, Llenovo/widget/ListPopupWindow$ForwardingListener;->toGlobalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 1422
    invoke-direct {p0, v1, v2}, Llenovo/widget/ListPopupWindow$ForwardingListener;->toLocalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 1425
    iget v8, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    invoke-virtual {v1, v2, v8}, Llenovo/widget/ListPopupWindow$DropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    move-result v3

    .line 1426
    .local v3, "handled":Z
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1429
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1430
    .local v0, "action":I
    const/4 v8, 0x1

    if-eq v0, v8, :cond_3

    .line 1431
    const/4 v8, 0x3

    if-eq v0, v8, :cond_2

    const/4 v4, 0x1

    .line 1433
    .local v4, "keepForwarding":Z
    :goto_0
    if-eqz v3, :cond_4

    .end local v4    # "keepForwarding":Z
    :goto_1
    return v4

    .line 1411
    .end local v0    # "action":I
    .end local v1    # "dst":Llenovo/widget/ListPopupWindow$DropDownListView;
    .end local v2    # "dstEvent":Landroid/view/MotionEvent;
    .end local v3    # "handled":Z
    :cond_0
    return v7

    .line 1416
    .restart local v1    # "dst":Llenovo/widget/ListPopupWindow$DropDownListView;
    :cond_1
    return v7

    .line 1431
    .restart local v0    # "action":I
    .restart local v2    # "dstEvent":Landroid/view/MotionEvent;
    .restart local v3    # "handled":Z
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "keepForwarding":Z
    goto :goto_0

    .line 1430
    .end local v4    # "keepForwarding":Z
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "keepForwarding":Z
    goto :goto_0

    :cond_4
    move v4, v7

    .line 1433
    goto :goto_1
.end method

.method private onTouchObserved(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "srcEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1323
    iget-object v2, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1324
    .local v2, "src":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1325
    return v8

    .line 1328
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1329
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    .line 1363
    :cond_1
    :goto_0
    return v8

    .line 1331
    :pswitch_0
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    .line 1332
    iput-boolean v8, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mWasLongPress:Z

    .line 1334
    iget-object v5, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-nez v5, :cond_2

    .line 1335
    new-instance v5, Llenovo/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;

    invoke-direct {v5, p0, v9}, Llenovo/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;-><init>(Llenovo/widget/ListPopupWindow$ForwardingListener;Llenovo/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;)V

    iput-object v5, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    .line 1337
    :cond_2
    iget-object v5, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    iget v6, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mTapTimeout:I

    int-to-long v6, v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1338
    iget-object v5, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-nez v5, :cond_3

    .line 1339
    new-instance v5, Llenovo/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;

    invoke-direct {v5, p0, v9}, Llenovo/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;-><init>(Llenovo/widget/ListPopupWindow$ForwardingListener;Llenovo/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;)V

    iput-object v5, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    .line 1341
    :cond_3
    iget-object v5, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    iget v6, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mLongPressTimeout:I

    int-to-long v6, v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1344
    :pswitch_1
    iget v5, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 1345
    .local v1, "activePointerIndex":I
    if-ltz v1, :cond_1

    .line 1346
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1347
    .local v3, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1348
    .local v4, "y":F
    iget v5, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mScaledTouchSlop:F

    invoke-static {v2, v3, v4, v5}, Llenovo/widget/ListPopupWindow$ForwardingListener;->pointInView(Landroid/view/View;FFF)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1349
    invoke-direct {p0}, Llenovo/widget/ListPopupWindow$ForwardingListener;->clearCallbacks()V

    .line 1352
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1353
    return v6

    .line 1359
    .end local v1    # "activePointerIndex":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_2
    invoke-direct {p0}, Llenovo/widget/ListPopupWindow$ForwardingListener;->clearCallbacks()V

    goto :goto_0

    .line 1329
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static pointInView(Landroid/view/View;FFF)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "localX"    # F
    .param p2, "localY"    # F
    .param p3, "slop"    # F

    .prologue
    const/4 v0, 0x0

    .line 1437
    neg-float v1, p3

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    neg-float v1, p3

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    .line 1438
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, p3

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 1439
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, p3

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 1437
    :cond_0
    return v0
.end method

.method private toGlobalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 1458
    iget-object v0, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mTmpLocation:[I

    .line 1459
    .local v0, "loc":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1460
    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    aget v2, v0, v3

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1461
    return v3
.end method

.method private toLocalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 1447
    iget-object v0, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mTmpLocation:[I

    .line 1448
    .local v0, "loc":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1449
    const/4 v1, 0x0

    aget v1, v0, v1

    neg-int v1, v1

    int-to-float v1, v1

    aget v2, v0, v3

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1450
    return v3
.end method


# virtual methods
.method public abstract getPopup()Llenovo/widget/ListPopupWindow;
.end method

.method protected onForwardingStarted()Z
    .locals 2

    .prologue
    .line 1295
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow$ForwardingListener;->getPopup()Llenovo/widget/ListPopupWindow;

    move-result-object v0

    .line 1296
    .local v0, "popup":Llenovo/widget/ListPopupWindow;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Llenovo/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1299
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1297
    :cond_1
    invoke-virtual {v0}, Llenovo/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method protected onForwardingStopped()Z
    .locals 2

    .prologue
    .line 1309
    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow$ForwardingListener;->getPopup()Llenovo/widget/ListPopupWindow;

    move-result-object v0

    .line 1310
    .local v0, "popup":Llenovo/widget/ListPopupWindow;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Llenovo/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1311
    invoke-virtual {v0}, Llenovo/widget/ListPopupWindow;->dismiss()V

    .line 1313
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 1259
    iget-boolean v10, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mForwarding:Z

    .line 1261
    .local v10, "wasForwarding":Z
    if-eqz v10, :cond_3

    .line 1262
    iget-boolean v2, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mWasLongPress:Z

    if-eqz v2, :cond_1

    .line 1266
    invoke-direct {p0, p2}, Llenovo/widget/ListPopupWindow$ForwardingListener;->onTouchForwarded(Landroid/view/MotionEvent;)Z

    move-result v9

    .line 1283
    :cond_0
    :goto_0
    iput-boolean v9, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mForwarding:Z

    .line 1284
    if-nez v9, :cond_5

    .end local v10    # "wasForwarding":Z
    :goto_1
    return v10

    .line 1268
    .restart local v10    # "wasForwarding":Z
    :cond_1
    invoke-direct {p0, p2}, Llenovo/widget/ListPopupWindow$ForwardingListener;->onTouchForwarded(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow$ForwardingListener;->onForwardingStopped()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v9, 0x0

    .local v9, "forwarding":Z
    goto :goto_0

    .end local v9    # "forwarding":Z
    :cond_2
    const/4 v9, 0x1

    .restart local v9    # "forwarding":Z
    goto :goto_0

    .line 1271
    .end local v9    # "forwarding":Z
    :cond_3
    invoke-direct {p0, p2}, Llenovo/widget/ListPopupWindow$ForwardingListener;->onTouchObserved(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Llenovo/widget/ListPopupWindow$ForwardingListener;->onForwardingStarted()Z

    move-result v9

    .line 1273
    :goto_2
    if-eqz v9, :cond_0

    .line 1275
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1276
    .local v0, "now":J
    const/4 v4, 0x3

    .line 1277
    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    .line 1276
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1278
    .local v8, "e":Landroid/view/MotionEvent;
    iget-object v2, p0, Llenovo/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1279
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 1271
    .end local v0    # "now":J
    .end local v8    # "e":Landroid/view/MotionEvent;
    :cond_4
    const/4 v9, 0x0

    .restart local v9    # "forwarding":Z
    goto :goto_2

    .line 1284
    .end local v9    # "forwarding":Z
    :cond_5
    const/4 v10, 0x1

    goto :goto_1
.end method
