.class final Lcom/android/server/twilight/TwilightService$LocationHandler;
.super Landroid/os/Handler;
.source "TwilightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/twilight/TwilightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocationHandler"
.end annotation


# static fields
.field private static final FACTOR_GMT_OFFSET_LONGITUDE:D = 0.004166666666666667

.field private static final LOCATION_UPDATE_DISTANCE_METER:F = 20000.0f

.field private static final LOCATION_UPDATE_ENABLE_INTERVAL_MAX:J = 0xdbba0L

.field private static final LOCATION_UPDATE_ENABLE_INTERVAL_MIN:J = 0x1388L

.field private static final LOCATION_UPDATE_MS:J = 0x5265c00L

.field private static final MIN_LOCATION_UPDATE_MS:J = 0x1b7740L

.field private static final MSG_DO_TWILIGHT_UPDATE:I = 0x4

.field private static final MSG_ENABLE_LOCATION_UPDATES:I = 0x1

.field private static final MSG_GET_NEW_LOCATION_UPDATE:I = 0x2

.field private static final MSG_PROCESS_NEW_LOCATION:I = 0x3


# instance fields
.field private mDidFirstInit:Z

.field private mLastNetworkRegisterTime:J

.field private mLastUpdateInterval:J

.field private mLocation:Landroid/location/Location;

.field private mNetworkListenerEnabled:Z

.field private mPassiveListenerEnabled:Z

.field private final mTwilightCalculator:Lcom/android/server/TwilightCalculator;

.field final synthetic this$0:Lcom/android/server/twilight/TwilightService;


# direct methods
.method private constructor <init>(Lcom/android/server/twilight/TwilightService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/twilight/TwilightService;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 217
    const-wide/32 v0, -0x1b7740

    iput-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastNetworkRegisterTime:J

    .line 220
    new-instance v0, Lcom/android/server/TwilightCalculator;

    invoke-direct {v0}, Lcom/android/server/TwilightCalculator;-><init>()V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    .line 199
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightService$LocationHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/twilight/TwilightService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/twilight/TwilightService$LocationHandler;-><init>(Lcom/android/server/twilight/TwilightService;)V

    return-void
.end method

.method private retrieveLocation()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 339
    const/4 v4, 0x0

    .line 341
    .local v4, "location":Landroid/location/Location;
    iget-object v6, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v6, v6, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    new-instance v8, Landroid/location/Criteria;

    invoke-direct {v8}, Landroid/location/Criteria;-><init>()V

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 342
    .end local v4    # "location":Landroid/location/Location;
    .local v5, "providers":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 344
    iget-object v6, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v8, v6, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 346
    .local v1, "lastKnownLocation":Landroid/location/Location;
    if-eqz v4, :cond_1

    if-eqz v1, :cond_0

    .line 347
    invoke-virtual {v4}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v8

    .line 348
    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v10

    .line 347
    cmp-long v6, v8, v10

    if-gez v6, :cond_0

    .line 349
    :cond_1
    move-object v4, v1

    .local v4, "location":Landroid/location/Location;
    goto :goto_0

    .line 356
    .end local v1    # "lastKnownLocation":Landroid/location/Location;
    .end local v4    # "location":Landroid/location/Location;
    :cond_2
    if-nez v4, :cond_3

    .line 357
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 358
    .local v0, "currentTime":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 360
    iget-wide v8, v0, Landroid/text/format/Time;->gmtoff:J

    iget v6, v0, Landroid/text/format/Time;->isDst:I

    if-lez v6, :cond_4

    const/16 v6, 0xe10

    :goto_1
    int-to-long v6, v6

    sub-long v6, v8, v6

    long-to-double v6, v6

    .line 359
    const-wide v8, 0x3f71111111111111L    # 0.004166666666666667

    mul-double v2, v8, v6

    .line 361
    .local v2, "lngOffset":D
    new-instance v4, Landroid/location/Location;

    const-string/jumbo v6, "fake"

    invoke-direct {v4, v6}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 362
    .restart local v4    # "location":Landroid/location/Location;
    invoke-virtual {v4, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 363
    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    .line 364
    const v6, 0x48cb9d00    # 417000.0f

    invoke-virtual {v4, v6}, Landroid/location/Location;->setAccuracy(F)V

    .line 365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setTime(J)V

    .line 366
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 373
    .end local v0    # "currentTime":Landroid/text/format/Time;
    .end local v2    # "lngOffset":D
    .end local v4    # "location":Landroid/location/Location;
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/server/twilight/TwilightService$LocationHandler;->setLocation(Landroid/location/Location;)V

    .line 338
    return-void

    .restart local v0    # "currentTime":Landroid/text/format/Time;
    :cond_4
    move v6, v7

    .line 360
    goto :goto_1
.end method

.method private setLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    .line 378
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->updateTwilightState()V

    .line 376
    return-void
.end method

.method private updateTwilightState()V
    .locals 26

    .prologue
    .line 382
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    if-nez v3, :cond_0

    .line 383
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/twilight/TwilightService;->-wrap5(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightState;)V

    .line 384
    return-void

    .line 387
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 390
    .local v16, "now":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    const-wide/32 v4, 0x5265c00

    sub-long v4, v16, v4

    .line 391
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 390
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    .line 392
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    iget-wide v0, v3, Lcom/android/server/TwilightCalculator;->mSunset:J

    move-wide/from16 v24, v0

    .line 395
    .local v24, "yesterdaySunset":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    .line 396
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    move-wide/from16 v4, v16

    .line 395
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    .line 397
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    iget v3, v3, Lcom/android/server/TwilightCalculator;->mState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v12, 0x1

    .line 398
    .local v12, "isNight":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    iget-wide v0, v3, Lcom/android/server/TwilightCalculator;->mSunrise:J

    move-wide/from16 v18, v0

    .line 399
    .local v18, "todaySunrise":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    iget-wide v0, v3, Lcom/android/server/TwilightCalculator;->mSunset:J

    move-wide/from16 v20, v0

    .line 402
    .local v20, "todaySunset":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    const-wide/32 v4, 0x5265c00

    add-long v4, v4, v16

    .line 403
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 402
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    .line 404
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    iget-wide v10, v3, Lcom/android/server/TwilightCalculator;->mSunrise:J

    .line 407
    .local v10, "tomorrowSunrise":J
    new-instance v2, Lcom/android/server/twilight/TwilightState;

    move v3, v12

    move-wide/from16 v4, v24

    move-wide/from16 v6, v18

    move-wide/from16 v8, v20

    invoke-direct/range {v2 .. v11}, Lcom/android/server/twilight/TwilightState;-><init>(ZJJJJ)V

    .line 412
    .local v2, "state":Lcom/android/server/twilight/TwilightState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v3, v2}, Lcom/android/server/twilight/TwilightService;->-wrap5(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightState;)V

    .line 416
    const-wide/16 v4, -0x1

    cmp-long v3, v18, v4

    if-eqz v3, :cond_1

    const-wide/16 v4, -0x1

    cmp-long v3, v20, v4

    if-nez v3, :cond_3

    .line 418
    :cond_1
    const-wide/32 v4, 0x2932e00

    add-long v14, v16, v4

    .line 436
    .local v14, "nextUpdate":J
    :goto_1
    new-instance v22, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.server.action.UPDATE_TWILIGHT_STATE"

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .local v22, "updateIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v3}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 437
    move-object/from16 v0, v22

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 439
    .local v13, "pendingIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v3, v3, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v13}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v3, v3, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v14, v15, v13}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 381
    return-void

    .line 397
    .end local v2    # "state":Lcom/android/server/twilight/TwilightState;
    .end local v10    # "tomorrowSunrise":J
    .end local v12    # "isNight":Z
    .end local v13    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v14    # "nextUpdate":J
    .end local v18    # "todaySunrise":J
    .end local v20    # "todaySunset":J
    .end local v22    # "updateIntent":Landroid/content/Intent;
    :cond_2
    const/4 v12, 0x0

    .restart local v12    # "isNight":Z
    goto/16 :goto_0

    .line 421
    .restart local v2    # "state":Lcom/android/server/twilight/TwilightState;
    .restart local v10    # "tomorrowSunrise":J
    .restart local v18    # "todaySunrise":J
    .restart local v20    # "todaySunset":J
    :cond_3
    const-wide/32 v14, 0xea60

    .line 423
    .restart local v14    # "nextUpdate":J
    cmp-long v3, v16, v20

    if-lez v3, :cond_4

    .line 424
    add-long/2addr v14, v10

    goto :goto_1

    .line 425
    :cond_4
    cmp-long v3, v16, v18

    if-lez v3, :cond_5

    .line 426
    add-long v14, v14, v20

    goto :goto_1

    .line 428
    :cond_5
    add-long v14, v14, v18

    goto :goto_1
.end method


# virtual methods
.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->sendEmptyMessage(I)Z

    .line 227
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 241
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 243
    :pswitch_0
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/location/Location;

    .line 244
    .local v9, "location":Landroid/location/Location;
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-static {v0, v9}, Lcom/android/server/twilight/TwilightService;->-wrap0(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v8

    .line 245
    .local v8, "hasMoved":Z
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_2

    .line 246
    invoke-virtual {v9}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    const/4 v7, 0x1

    .line 252
    .local v7, "hasBetterAccuracy":Z
    :goto_1
    if-nez v8, :cond_1

    if-eqz v7, :cond_0

    .line 253
    :cond_1
    invoke-direct {p0, v9}, Lcom/android/server/twilight/TwilightService$LocationHandler;->setLocation(Landroid/location/Location;)V

    goto :goto_0

    .line 245
    .end local v7    # "hasBetterAccuracy":Z
    :cond_2
    const/4 v7, 0x1

    .restart local v7    # "hasBetterAccuracy":Z
    goto :goto_1

    .line 246
    .end local v7    # "hasBetterAccuracy":Z
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "hasBetterAccuracy":Z
    goto :goto_1

    .line 259
    .end local v7    # "hasBetterAccuracy":Z
    .end local v8    # "hasMoved":Z
    .end local v9    # "location":Landroid/location/Location;
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    if-nez v0, :cond_4

    .line 262
    return-void

    .line 264
    :cond_4
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastNetworkRegisterTime:J

    const-wide/32 v2, 0x1b7740

    add-long/2addr v0, v2

    .line 265
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 264
    cmp-long v0, v0, v2

    if-ltz v0, :cond_5

    .line 268
    return-void

    .line 273
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    .line 274
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get0(Lcom/android/server/twilight/TwilightService;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 283
    :pswitch_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 289
    :goto_2
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    if-nez v0, :cond_6

    if-eqz v10, :cond_6

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    .line 291
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastNetworkRegisterTime:J

    .line 292
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    .line 293
    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v2}, Lcom/android/server/twilight/TwilightService;->-get0(Lcom/android/server/twilight/TwilightService;)Landroid/location/LocationListener;

    move-result-object v5

    const-wide/32 v2, 0x5265c00

    .line 292
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 295
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mDidFirstInit:Z

    if-nez v0, :cond_6

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mDidFirstInit:Z

    .line 297
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    if-nez v0, :cond_6

    .line 298
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->retrieveLocation()V

    .line 308
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "passive"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    .line 315
    :goto_3
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mPassiveListenerEnabled:Z

    if-nez v0, :cond_7

    if-eqz v11, :cond_7

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mPassiveListenerEnabled:Z

    .line 317
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "passive"

    .line 318
    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v4}, Lcom/android/server/twilight/TwilightService;->-get1(Lcom/android/server/twilight/TwilightService;)Landroid/location/LocationListener;

    move-result-object v5

    const v4, 0x469c4000    # 20000.0f

    .line 317
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 321
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mPassiveListenerEnabled:Z

    :goto_4
    if-nez v0, :cond_0

    .line 322
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    .line 323
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 324
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    .line 328
    :cond_8
    :goto_5
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/twilight/TwilightService$LocationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 284
    :catch_0
    move-exception v6

    .line 287
    .local v6, "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    .local v10, "networkLocationEnabled":Z
    goto/16 :goto_2

    .line 309
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v10    # "networkLocationEnabled":Z
    :catch_1
    move-exception v6

    .line 312
    .restart local v6    # "e":Ljava/lang/Exception;
    const/4 v11, 0x0

    .local v11, "passiveLocationEnabled":Z
    goto :goto_3

    .line 321
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v11    # "passiveLocationEnabled":Z
    :cond_9
    const/4 v0, 0x0

    goto :goto_4

    .line 325
    :cond_a
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    .line 326
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    goto :goto_5

    .line 333
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->updateTwilightState()V

    goto/16 :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public processNewLocation(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 223
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1}, Lcom/android/server/twilight/TwilightService$LocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 224
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 222
    return-void
.end method

.method public requestLocationUpdate()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->sendEmptyMessage(I)Z

    .line 231
    return-void
.end method

.method public requestTwilightUpdate()V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->sendEmptyMessage(I)Z

    .line 235
    return-void
.end method
