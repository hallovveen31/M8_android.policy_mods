.class final Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SensorEventListenerImpl"
.end annotation


# static fields
.field private static final ACCELERATION_TOLERANCE:F = 2.6f

.field private static final ACCELEROMETER_DATA_X:I = 0x0

.field private static final ACCELEROMETER_DATA_Y:I = 0x1

.field private static final ACCELEROMETER_DATA_Z:I = 0x2

.field private static final ADJACENT_ORIENTATION_ANGLE_GAP:I = 0x2d

.field private static final FILTER_TIME_CONSTANT_MS:F = 200.0f

.field private static final FLAT_ANGLE:F = 75.0f

.field private static final FLAT_TIME_NANOS:J = 0x3b9aca00L

.field private static final MAX_ACCELERATION_MAGNITUDE:F = 12.406651f

.field private static final MAX_FILTER_DELTA_TIME_NANOS:J = 0x3b9aca00L

.field private static final MAX_TILT:I = 0x4b

.field private static final MIN_ACCELERATION_MAGNITUDE:F = 7.2066503f

.field private static final NANOS_PER_MS:J = 0xf4240L

.field private static final NEAR_ZERO_MAGNITUDE:F = 1.0f

.field private static final PROPOSAL_MIN_TIME_SINCE_ACCELERATION_ENDED_NANOS:J = 0x1dcd6500L

.field private static final PROPOSAL_MIN_TIME_SINCE_FLAT_ENDED_NANOS:J = 0x1dcd6500L

.field private static final PROPOSAL_MIN_TIME_SINCE_SWING_ENDED_NANOS:J = 0x11e1a300L

.field private static final PROPOSAL_SETTLE_TIME_NANOS:J = 0x2625a00L

.field private static final RADIANS_TO_DEGREES:F = 57.29578f

.field private static final SWING_AWAY_ANGLE_DELTA:F = 20.0f

.field private static final SWING_TIME_NANOS:J = 0x11e1a300L

.field private static final TILT_HISTORY_SIZE:I = 0x28


# instance fields
.field private final TILT_TOLERANCE:[[I

.field private mAccelerationTimestampNanos:J

.field private mFlatTimestampNanos:J

.field private mLastFilteredTimestampNanos:J

.field private mLastFilteredX:F

.field private mLastFilteredY:F

.field private mLastFilteredZ:F

.field private mPredictedRotation:I

.field private mPredictedRotationTimestampNanos:J

.field private mProposedRotation:I

.field private mSwingTimestampNanos:J

.field private mTiltHistory:[F

.field private mTiltHistoryIndex:I

.field private mTiltHistoryTimestampNanos:[J

.field final synthetic this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/WindowOrientationListener;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x28

    const/4 v3, 0x2

    .line 222
    iput-object p1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->TILT_TOLERANCE:[[I

    .line 380
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    .line 381
    new-array v0, v4, [J

    iput-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    return-void

    .line 342
    nop

    :array_0
    .array-data 0x4
        0xe7t 0xfft 0xfft 0xfft
        0x46t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0xe7t 0xfft 0xfft 0xfft
        0x41t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0xe7t 0xfft 0xfft 0xfft
        0x3ct 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0xe7t 0xfft 0xfft 0xfft
        0x41t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->resetLocked()V

    return-void
.end method

.method private addTiltHistoryEntryLocked(JF)V
    .locals 4
    .parameter "now"
    .parameter "tilt"

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    iget v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    aput p3, v0, v1

    .line 697
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    iget v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    aput-wide p1, v0, v1

    .line 698
    iget v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x28

    iput v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .line 699
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    iget v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    const-wide/high16 v2, -0x8000

    aput-wide v2, v0, v1

    .line 700
    return-void
.end method

.method private clearPredictedRotationLocked()V
    .locals 2

    .prologue
    .line 674
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    .line 675
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    .line 676
    return-void
.end method

.method private clearTiltHistoryLocked()V
    .locals 4

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000

    aput-wide v2, v0, v1

    .line 692
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .line 693
    return-void
.end method

.method private isAcceleratingLocked(F)Z
    .locals 1
    .parameter "magnitude"

    .prologue
    .line 686
    const v0, 0x40e69ce1

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x414681a4

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFlatLocked(J)Z
    .locals 5
    .parameter "now"

    .prologue
    .line 703
    iget v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .local v0, i:I
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->nextTiltHistoryIndexLocked(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 704
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    aget v1, v1, v0

    const/high16 v2, 0x4296

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 712
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 707
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    aget-wide v1, v1, v0

    const-wide/32 v3, 0x3b9aca00

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gtz v1, :cond_0

    .line 709
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isOrientationAngleAcceptableLocked(II)Z
    .locals 5
    .parameter "rotation"
    .parameter "orientationAngle"

    .prologue
    const/4 v3, 0x0

    .line 589
    iget-object v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;

    #getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$300(Lcom/android/internal/policy/impl/WindowOrientationListener;)I

    move-result v0

    .line 590
    .local v0, currentRotation:I
    if-ltz v0, :cond_5

    .line 595
    if-eq p1, v0, :cond_0

    add-int/lit8 v4, v0, 0x1

    rem-int/lit8 v4, v4, 0x4

    if-ne p1, v4, :cond_3

    .line 597
    :cond_0
    mul-int/lit8 v4, p1, 0x5a

    add-int/lit8 v4, v4, -0x2d

    add-int/lit8 v1, v4, 0x16

    .line 599
    .local v1, lowerBound:I
    if-nez p1, :cond_2

    .line 600
    const/16 v4, 0x13b

    if-lt p2, v4, :cond_3

    add-int/lit16 v4, v1, 0x168

    if-ge p2, v4, :cond_3

    .line 629
    .end local v1           #lowerBound:I
    :cond_1
    :goto_0
    return v3

    .line 604
    .restart local v1       #lowerBound:I
    :cond_2
    if-lt p2, v1, :cond_1

    .line 614
    .end local v1           #lowerBound:I
    :cond_3
    if-eq p1, v0, :cond_4

    add-int/lit8 v4, v0, 0x3

    rem-int/lit8 v4, v4, 0x4

    if-ne p1, v4, :cond_5

    .line 616
    :cond_4
    mul-int/lit8 v4, p1, 0x5a

    add-int/lit8 v4, v4, 0x2d

    add-int/lit8 v2, v4, -0x16

    .line 618
    .local v2, upperBound:I
    if-nez p1, :cond_6

    .line 619
    const/16 v4, 0x2d

    if-gt p2, v4, :cond_5

    if-gt p2, v2, :cond_1

    .line 629
    .end local v2           #upperBound:I
    :cond_5
    const/4 v3, 0x1

    goto :goto_0

    .line 623
    .restart local v2       #upperBound:I
    :cond_6
    if-le p2, v2, :cond_5

    goto :goto_0
.end method

.method private isPredictedRotationAcceptableLocked(J)Z
    .locals 7
    .parameter "now"

    .prologue
    const-wide/32 v5, 0x1dcd6500

    const/4 v0, 0x0

    .line 638
    iget-wide v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    const-wide/32 v3, 0x2625a00

    add-long/2addr v1, v3

    cmp-long v1, p1, v1

    if-gez v1, :cond_1

    .line 660
    :cond_0
    :goto_0
    return v0

    .line 643
    :cond_1
    iget-wide v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    add-long/2addr v1, v5

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    .line 649
    iget-wide v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    const-wide/32 v3, 0x11e1a300

    add-long/2addr v1, v3

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    .line 654
    iget-wide v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    add-long/2addr v1, v5

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    .line 660
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSwingingLocked(JF)Z
    .locals 5
    .parameter "now"
    .parameter "tilt"

    .prologue
    .line 716
    iget v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .local v0, i:I
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->nextTiltHistoryIndexLocked(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 717
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    aget-wide v1, v1, v0

    const-wide/32 v3, 0x11e1a300

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gez v1, :cond_2

    .line 725
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 720
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    aget v1, v1, v0

    const/high16 v2, 0x41a0

    add-float/2addr v1, v2

    cmpg-float v1, v1, p3

    if-gtz v1, :cond_0

    .line 722
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isTiltAngleAcceptableLocked(II)Z
    .locals 3
    .parameter "rotation"
    .parameter "tiltAngle"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 575
    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->TILT_TOLERANCE:[[I

    aget-object v2, v2, p1

    aget v2, v2, v1

    if-lt p2, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->TILT_TOLERANCE:[[I

    aget-object v2, v2, p1

    aget v2, v2, v0

    if-gt p2, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private nextTiltHistoryIndexLocked(I)I
    .locals 4
    .parameter "index"

    .prologue
    .line 729
    if-nez p1, :cond_0

    const/16 p1, 0x28

    .end local p1
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 730
    .restart local p1
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    aget-wide v0, v0, p1

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_1
    const/4 p1, -0x1

    goto :goto_0
.end method

.method private remainingMS(JJ)F
    .locals 2
    .parameter "now"
    .parameter "until"

    .prologue
    .line 734
    cmp-long v0, p1, p3

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sub-long v0, p3, p1

    long-to-float v0, v0

    const v1, 0x358637bd

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method private resetLocked()V
    .locals 3

    .prologue
    const-wide/high16 v1, -0x8000

    .line 664
    iput-wide v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredTimestampNanos:J

    .line 665
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    .line 666
    iput-wide v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    .line 667
    iput-wide v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    .line 668
    iput-wide v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    .line 669
    invoke-direct {p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotationLocked()V

    .line 670
    invoke-direct {p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->clearTiltHistoryLocked()V

    .line 671
    return-void
.end method

.method private updatePredictedRotationLocked(JI)V
    .locals 1
    .parameter "now"
    .parameter "rotation"

    .prologue
    .line 679
    iget v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    if-eq v0, p3, :cond_0

    .line 680
    iput p3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    .line 681
    iput-wide p1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    .line 683
    :cond_0
    return-void
.end method


# virtual methods
.method public getProposedRotationLocked()I
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 390
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 29
    .parameter "event"

    .prologue
    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;

    move-object/from16 v22, v0

    #getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;
    invoke-static/range {v22 .. v22}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$100(Lcom/android/internal/policy/impl/WindowOrientationListener;)Ljava/lang/Object;

    move-result-object v23

    monitor-enter v23

    .line 401
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v22, v0

    const/16 v24, 0x0

    aget v19, v22, v24

    .line 402
    .local v19, x:F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v22, v0

    const/16 v24, 0x1

    aget v20, v22, v24

    .line 403
    .local v20, y:F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v22, v0

    const/16 v24, 0x2

    aget v21, v22, v24

    .line 405
    .local v21, z:F
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$200()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 406
    const-string v22, "WindowOrientationListener"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Raw acceleration vector: x="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", y="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", z="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", magnitude="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    mul-float v25, v19, v19

    mul-float v26, v20, v20

    add-float v25, v25, v26

    mul-float v26, v21, v21

    add-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_0
    move-object/from16 v0, p1

    iget-wide v9, v0, Landroid/hardware/SensorEvent;->timestamp:J

    .line 416
    .local v9, now:J
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredTimestampNanos:J

    .line 417
    .local v15, then:J
    sub-long v24, v9, v15

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v22, v0

    const v24, 0x358637bd

    mul-float v18, v22, v24

    .line 419
    .local v18, timeDeltaMS:F
    cmp-long v22, v9, v15

    if-ltz v22, :cond_1

    const-wide/32 v24, 0x3b9aca00

    add-long v24, v24, v15

    cmp-long v22, v9, v24

    if-gtz v22, :cond_1

    const/16 v22, 0x0

    cmpl-float v22, v19, v22

    if-nez v22, :cond_a

    const/16 v22, 0x0

    cmpl-float v22, v20, v22

    if-nez v22, :cond_a

    const/16 v22, 0x0

    cmpl-float v22, v21, v22

    if-nez v22, :cond_a

    .line 422
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$200()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 423
    const-string v22, "WindowOrientationListener"

    const-string v24, "Resetting orientation listener."

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->resetLocked()V

    .line 426
    const/4 v14, 0x1

    .line 439
    .local v14, skipSample:Z
    :goto_0
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredTimestampNanos:J

    .line 440
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    .line 441
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    .line 442
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    .line 444
    const/4 v4, 0x0

    .line 445
    .local v4, isAccelerating:Z
    const/4 v5, 0x0

    .line 446
    .local v5, isFlat:Z
    const/4 v6, 0x0

    .line 447
    .local v6, isSwinging:Z
    if-nez v14, :cond_4

    .line 449
    mul-float v22, v19, v19

    mul-float v24, v20, v20

    add-float v22, v22, v24

    mul-float v24, v21, v21

    add-float v22, v22, v24

    invoke-static/range {v22 .. v22}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v7

    .line 450
    .local v7, magnitude:F
    const/high16 v22, 0x3f80

    cmpg-float v22, v7, v22

    if-gez v22, :cond_c

    .line 451
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$200()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 452
    const-string v22, "WindowOrientationListener"

    const-string v24, "Ignoring sensor data, magnitude too close to zero."

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotationLocked()V

    .line 535
    .end local v7           #magnitude:F
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    .line 536
    .local v11, oldProposedRotation:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    move/from16 v22, v0

    if-ltz v22, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->isPredictedRotationAcceptableLocked(J)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 537
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    .line 539
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    .line 542
    .local v13, proposedRotation:I
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$200()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 543
    const-string v22, "WindowOrientationListener"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Result: currentRotation="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;

    move-object/from16 v25, v0

    #getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I
    invoke-static/range {v25 .. v25}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$300(Lcom/android/internal/policy/impl/WindowOrientationListener;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", proposedRotation="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", predictedRotation="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", timeDeltaMS="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", isAccelerating="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", isFlat="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", isSwinging="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", timeUntilSettledMS="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    move-wide/from16 v25, v0

    const-wide/32 v27, 0x2625a00

    add-long v25, v25, v27

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v9, v10, v1, v2}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->remainingMS(JJ)F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", timeUntilAccelerationDelayExpiredMS="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    move-wide/from16 v25, v0

    const-wide/32 v27, 0x1dcd6500

    add-long v25, v25, v27

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v9, v10, v1, v2}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->remainingMS(JJ)F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", timeUntilFlatDelayExpiredMS="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    move-wide/from16 v25, v0

    const-wide/32 v27, 0x1dcd6500

    add-long v25, v25, v27

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v9, v10, v1, v2}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->remainingMS(JJ)F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", timeUntilSwingDelayExpiredMS="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    move-wide/from16 v25, v0

    const-wide/32 v27, 0x11e1a300

    add-long v25, v25, v27

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v9, v10, v1, v2}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->remainingMS(JJ)F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_7
    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    if-eq v13, v11, :cond_9

    if-ltz v13, :cond_9

    .line 563
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$200()Z

    move-result v22

    if-eqz v22, :cond_8

    .line 564
    const-string v22, "WindowOrientationListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Proposed rotation changed!  proposedRotation="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", oldProposedRotation="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/android/internal/policy/impl/WindowOrientationListener;->onProposedRotationChanged(I)V

    .line 569
    :cond_9
    return-void

    .line 428
    .end local v4           #isAccelerating:Z
    .end local v5           #isFlat:Z
    .end local v6           #isSwinging:Z
    .end local v11           #oldProposedRotation:I
    .end local v13           #proposedRotation:I
    .end local v14           #skipSample:Z
    :cond_a
    const/high16 v22, 0x4348

    add-float v22, v22, v18

    div-float v3, v18, v22

    .line 429
    .local v3, alpha:F
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    move/from16 v22, v0

    sub-float v22, v19, v22

    mul-float v22, v22, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    move/from16 v24, v0

    add-float v19, v22, v24

    .line 430
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    move/from16 v22, v0

    sub-float v22, v20, v22

    mul-float v22, v22, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    move/from16 v24, v0

    add-float v20, v22, v24

    .line 431
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    move/from16 v22, v0

    sub-float v22, v21, v22

    mul-float v22, v22, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    move/from16 v24, v0

    add-float v21, v22, v24

    .line 432
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$200()Z

    move-result v22

    if-eqz v22, :cond_b

    .line 433
    const-string v22, "WindowOrientationListener"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Filtered acceleration vector: x="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", y="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", z="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", magnitude="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    mul-float v25, v19, v19

    mul-float v26, v20, v20

    add-float v25, v25, v26

    mul-float v26, v21, v21

    add-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_b
    const/4 v14, 0x0

    .restart local v14       #skipSample:Z
    goto/16 :goto_0

    .line 458
    .end local v3           #alpha:F
    .restart local v4       #isAccelerating:Z
    .restart local v5       #isFlat:Z
    .restart local v6       #isSwinging:Z
    .restart local v7       #magnitude:F
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->isAcceleratingLocked(F)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 459
    const/4 v4, 0x1

    .line 460
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    .line 469
    :cond_d
    div-float v22, v21, v7

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->asin(D)D

    move-result-wide v24

    const-wide v26, 0x404ca5dc20000000L

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->round(D)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v17, v0

    .line 471
    .local v17, tiltAngle:I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v9, v10, v1}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->addTiltHistoryEntryLocked(JF)V

    .line 474
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->isFlatLocked(J)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 475
    const/4 v5, 0x1

    .line 476
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    .line 478
    :cond_e
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v9, v10, v1}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->isSwingingLocked(JF)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 479
    const/4 v6, 0x1

    .line 480
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    .line 485
    :cond_f
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v22

    const/16 v24, 0x4b

    move/from16 v0, v22

    move/from16 v1, v24

    if-le v0, v1, :cond_11

    .line 486
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$200()Z

    move-result v22

    if-eqz v22, :cond_10

    .line 487
    const-string v22, "WindowOrientationListener"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Ignoring sensor data, tilt angle too high: tiltAngle="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotationLocked()V

    goto/16 :goto_1

    .line 559
    .end local v4           #isAccelerating:Z
    .end local v5           #isFlat:Z
    .end local v6           #isSwinging:Z
    .end local v7           #magnitude:F
    .end local v9           #now:J
    .end local v14           #skipSample:Z
    .end local v15           #then:J
    .end local v17           #tiltAngle:I
    .end local v18           #timeDeltaMS:F
    .end local v19           #x:F
    .end local v20           #y:F
    .end local v21           #z:F
    :catchall_0
    move-exception v22

    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v22

    .line 495
    .restart local v4       #isAccelerating:Z
    .restart local v5       #isFlat:Z
    .restart local v6       #isSwinging:Z
    .restart local v7       #magnitude:F
    .restart local v9       #now:J
    .restart local v14       #skipSample:Z
    .restart local v15       #then:J
    .restart local v17       #tiltAngle:I
    .restart local v18       #timeDeltaMS:F
    .restart local v19       #x:F
    .restart local v20       #y:F
    .restart local v21       #z:F
    :cond_11
    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v26, v0

    :try_start_2
    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v24

    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x404ca5dc20000000L

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->round(D)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v12, v0

    .line 497
    .local v12, orientationAngle:I
    if-gez v12, :cond_12

    .line 499
    add-int/lit16 v12, v12, 0x168

    .line 503
    :cond_12
    add-int/lit8 v22, v12, 0x2d

    div-int/lit8 v8, v22, 0x5a

    .line 504
    .local v8, nearestRotation:I
    const/16 v22, 0x4

    move/from16 v0, v22

    if-ne v8, v0, :cond_13

    .line 505
    const/4 v8, 0x0

    .line 509
    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v8, v1}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->isTiltAngleAcceptableLocked(II)Z

    move-result v22

    if-eqz v22, :cond_14

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->isOrientationAngleAcceptableLocked(II)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 512
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v8}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->updatePredictedRotationLocked(JI)V

    .line 513
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$200()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 514
    const-string v22, "WindowOrientationListener"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Predicted: tiltAngle="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", orientationAngle="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", predictedRotation="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", predictedRotationAgeMS="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    move-wide/from16 v25, v0

    sub-long v25, v9, v25

    move-wide/from16 v0, v25

    long-to-float v0, v0

    move/from16 v25, v0

    const v26, 0x358637bd

    mul-float v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 523
    :cond_14
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$200()Z

    move-result v22

    if-eqz v22, :cond_15

    .line 524
    const-string v22, "WindowOrientationListener"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Ignoring sensor data, no predicted rotation: tiltAngle="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", orientationAngle="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotationLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method
