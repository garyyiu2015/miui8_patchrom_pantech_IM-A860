.class public Landroid/widget/Scroller;
.super Ljava/lang/Object;
.source "Scroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Scroller$ViscousFluidInterpolator;
    }
.end annotation


# static fields
.field private static DECELERATION_RATE:F = 0.0f

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final END_TENSION:F = 1.0f

.field private static final FLING_MODE:I = 0x1

.field private static final INFLEXION:F = 0.35f

.field private static final NB_SAMPLES:I = 0x64

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SCROLL_MODE:I = 0x0

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final START_TENSION:F = 0.5f


# instance fields
.field private mCurrVelocity:F

.field private mCurrX:I

.field private mCurrY:I

.field private mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDistance:I

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mFlywheel:Z

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private mPhysicalCoeff:F

.field private final mPm:Landroid/os/PowerManager;

.field private final mPpi:F

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    .line 98
    const-wide v12, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    const-wide v14, 0x3feccccccccccccdL    # 0.9

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    double-to-float v11, v12

    sput v11, Landroid/widget/Scroller;->DECELERATION_RATE:F

    .line 106
    const/16 v11, 0x65

    new-array v11, v11, [F

    sput-object v11, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    .line 107
    const/16 v11, 0x65

    new-array v11, v11, [F

    sput-object v11, Landroid/widget/Scroller;->SPLINE_TIME:[F

    .line 118
    const/4 v7, 0x0

    .line 119
    .local v7, "x_min":F
    const/4 v10, 0x0

    .line 120
    .local v10, "y_min":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v11, 0x64

    if-ge v3, v11, :cond_4

    .line 121
    int-to-float v11, v3

    const/high16 v12, 0x42c80000    # 100.0f

    div-float v0, v11, v12

    .line 123
    .local v0, "alpha":F
    const/high16 v6, 0x3f800000    # 1.0f

    .line 126
    .local v6, "x_max":F
    :goto_1
    sub-float v11, v6, v7

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float v5, v7, v11

    .line 127
    .local v5, "x":F
    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v11, v5

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v5

    mul-float v1, v11, v12

    .line 128
    .local v1, "coef":F
    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v5

    const v12, 0x3e333333    # 0.175f

    mul-float/2addr v11, v12

    const v12, 0x3eb33334    # 0.35000002f

    mul-float/2addr v12, v5

    add-float/2addr v11, v12

    mul-float/2addr v11, v1

    mul-float v12, v5, v5

    mul-float/2addr v12, v5

    add-float v4, v11, v12

    .line 129
    .local v4, "tx":F
    sub-float v11, v4, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v12, v11

    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v11, v12, v14

    if-gez v11, :cond_0

    .line 133
    sget-object v11, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v5

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v12, v13

    add-float/2addr v12, v5

    mul-float/2addr v12, v1

    mul-float v13, v5, v5

    mul-float/2addr v13, v5

    add-float/2addr v12, v13

    aput v12, v11, v3

    .line 135
    const/high16 v9, 0x3f800000    # 1.0f

    .line 138
    .local v9, "y_max":F
    :goto_2
    sub-float v11, v9, v10

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float v8, v10, v11

    .line 139
    .local v8, "y":F
    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v8

    mul-float v1, v11, v12

    .line 140
    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v8

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    add-float/2addr v11, v8

    mul-float/2addr v11, v1

    mul-float v12, v8, v8

    mul-float/2addr v12, v8

    add-float v2, v11, v12

    .line 141
    .local v2, "dy":F
    sub-float v11, v2, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v12, v11

    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v11, v12, v14

    if-gez v11, :cond_2

    .line 145
    sget-object v11, Landroid/widget/Scroller;->SPLINE_TIME:[F

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v8

    const v13, 0x3e333333    # 0.175f

    mul-float/2addr v12, v13

    const v13, 0x3eb33334    # 0.35000002f

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    mul-float/2addr v12, v1

    mul-float v13, v8, v8

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    aput v12, v11, v3

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 130
    .end local v2    # "dy":F
    .end local v8    # "y":F
    .end local v9    # "y_max":F
    :cond_0
    cmpl-float v11, v4, v0

    if-lez v11, :cond_1

    move v6, v5

    goto/16 :goto_1

    .line 131
    :cond_1
    move v7, v5

    goto/16 :goto_1

    .line 142
    .restart local v2    # "dy":F
    .restart local v8    # "y":F
    .restart local v9    # "y_max":F
    :cond_2
    cmpl-float v11, v2, v0

    if-lez v11, :cond_3

    move v9, v8

    goto :goto_2

    .line 143
    :cond_3
    move v10, v8

    goto :goto_2

    .line 147
    .end local v0    # "alpha":F
    .end local v1    # "coef":F
    .end local v2    # "dy":F
    .end local v4    # "tx":F
    .end local v5    # "x":F
    .end local v6    # "x_max":F
    .end local v8    # "y":F
    .end local v9    # "y_max":F
    :cond_4
    sget-object v11, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    sget-object v12, Landroid/widget/Scroller;->SPLINE_TIME:[F

    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v14, 0x64

    aput v13, v12, v14

    const/high16 v12, 0x3f800000    # 1.0f

    const/16 v13, 0x64

    aput v12, v11, v13

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 163
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 162
    return-void

    .line 164
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "flywheel"    # Z

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mFlingFriction:F

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 174
    if-nez p2, :cond_0

    .line 175
    new-instance v0, Landroid/widget/Scroller$ViscousFluidInterpolator;

    invoke-direct {v0}, Landroid/widget/Scroller$ViscousFluidInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 179
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/widget/Scroller;->mPpi:F

    .line 180
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mDeceleration:F

    .line 181
    iput-boolean p3, p0, Landroid/widget/Scroller;->mFlywheel:Z

    .line 183
    const v0, 0x3f570a3d    # 0.84f

    invoke-direct {p0, v0}, Landroid/widget/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mPhysicalCoeff:F

    .line 185
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Landroid/widget/Scroller;->mPm:Landroid/os/PowerManager;

    .line 172
    return-void

    .line 177
    :cond_0
    iput-object p2, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method private computeDeceleration(F)F
    .locals 2
    .param p1, "friction"    # F

    .prologue
    .line 203
    iget v0, p0, Landroid/widget/Scroller;->mPpi:F

    .line 201
    const v1, 0x43c10b3d

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method private getSplineDeceleration(F)D
    .locals 3
    .param p1, "velocity"    # F

    .prologue
    .line 482
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/Scroller;->mFlingFriction:F

    iget v2, p0, Landroid/widget/Scroller;->mPhysicalCoeff:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(F)D
    .locals 8
    .param p1, "velocity"    # F

    .prologue
    .line 492
    invoke-direct {p0, p1}, Landroid/widget/Scroller;->getSplineDeceleration(F)D

    move-result-wide v2

    .line 493
    .local v2, "l":D
    sget v4, Landroid/widget/Scroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v0, v4, v6

    .line 494
    .local v0, "decelMinusOne":D
    iget v4, p0, Landroid/widget/Scroller;->mFlingFriction:F

    iget v5, p0, Landroid/widget/Scroller;->mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Landroid/widget/Scroller;->DECELERATION_RATE:F

    float-to-double v6, v6

    div-double/2addr v6, v0

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method private getSplineFlingDuration(F)I
    .locals 8
    .param p1, "velocity"    # F

    .prologue
    .line 486
    invoke-direct {p0, p1}, Landroid/widget/Scroller;->getSplineDeceleration(F)D

    move-result-wide v2

    .line 487
    .local v2, "l":D
    sget v4, Landroid/widget/Scroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v0, v4, v6

    .line 488
    .local v0, "decelMinusOne":D
    div-double v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    return v4
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    iput v0, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 506
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    iput v0, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 507
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 504
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 14

    .prologue
    .line 305
    iget-boolean v10, p0, Landroid/widget/Scroller;->mFinished:Z

    if-eqz v10, :cond_0

    .line 306
    const/4 v10, 0x0

    return v10

    .line 309
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Landroid/widget/Scroller;->mStartTime:J

    sub-long/2addr v10, v12

    long-to-int v7, v10

    .line 311
    .local v7, "timePassed":I
    iget v10, p0, Landroid/widget/Scroller;->mDuration:I

    if-ge v7, v10, :cond_3

    .line 312
    iget v10, p0, Landroid/widget/Scroller;->mMode:I

    packed-switch v10, :pswitch_data_0

    .line 356
    :cond_1
    :goto_0
    const/4 v10, 0x1

    return v10

    .line 314
    :pswitch_0
    iget-object v10, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    int-to-float v11, v7

    iget v12, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    mul-float/2addr v11, v12

    invoke-interface {v10, v11}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    .line 315
    .local v9, "x":F
    iget v10, p0, Landroid/widget/Scroller;->mStartX:I

    iget v11, p0, Landroid/widget/Scroller;->mDeltaX:F

    mul-float/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 316
    iget v10, p0, Landroid/widget/Scroller;->mStartY:I

    iget v11, p0, Landroid/widget/Scroller;->mDeltaY:F

    mul-float/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Landroid/widget/Scroller;->mCurrY:I

    goto :goto_0

    .line 319
    .end local v9    # "x":F
    :pswitch_1
    int-to-float v10, v7

    iget v11, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v11, v11

    div-float v4, v10, v11

    .line 320
    .local v4, "t":F
    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v10, v4

    float-to-int v3, v10

    .line 321
    .local v3, "index":I
    const/high16 v2, 0x3f800000    # 1.0f

    .line 322
    .local v2, "distanceCoef":F
    const/4 v8, 0x0

    .line 323
    .local v8, "velocityCoef":F
    const/16 v10, 0x64

    if-ge v3, v10, :cond_2

    .line 324
    int-to-float v10, v3

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v5, v10, v11

    .line 325
    .local v5, "t_inf":F
    add-int/lit8 v10, v3, 0x1

    int-to-float v10, v10

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v6, v10, v11

    .line 326
    .local v6, "t_sup":F
    sget-object v10, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    aget v0, v10, v3

    .line 327
    .local v0, "d_inf":F
    sget-object v10, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    add-int/lit8 v11, v3, 0x1

    aget v1, v10, v11

    .line 328
    .local v1, "d_sup":F
    sub-float v10, v1, v0

    sub-float v11, v6, v5

    div-float v8, v10, v11

    .line 329
    sub-float v10, v4, v5

    mul-float/2addr v10, v8

    add-float v2, v0, v10

    .line 332
    .end local v0    # "d_inf":F
    .end local v1    # "d_sup":F
    .end local v5    # "t_inf":F
    .end local v6    # "t_sup":F
    :cond_2
    iget v10, p0, Landroid/widget/Scroller;->mDistance:I

    int-to-float v10, v10

    mul-float/2addr v10, v8

    iget v11, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x447a0000    # 1000.0f

    mul-float/2addr v10, v11

    iput v10, p0, Landroid/widget/Scroller;->mCurrVelocity:F

    .line 334
    iget v10, p0, Landroid/widget/Scroller;->mStartX:I

    iget v11, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v12, p0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 336
    iget v10, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v11, p0, Landroid/widget/Scroller;->mMaxX:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 337
    iget v10, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v11, p0, Landroid/widget/Scroller;->mMinX:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 339
    iget v10, p0, Landroid/widget/Scroller;->mStartY:I

    iget v11, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v12, p0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 341
    iget v10, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v11, p0, Landroid/widget/Scroller;->mMaxY:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 342
    iget v10, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v11, p0, Landroid/widget/Scroller;->mMinY:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 344
    iget v10, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v11, p0, Landroid/widget/Scroller;->mFinalX:I

    if-ne v10, v11, :cond_1

    iget v10, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v11, p0, Landroid/widget/Scroller;->mFinalY:I

    if-ne v10, v11, :cond_1

    .line 345
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/Scroller;->mFinished:Z

    goto/16 :goto_0

    .line 352
    .end local v2    # "distanceCoef":F
    .end local v3    # "index":I
    .end local v4    # "t":F
    .end local v8    # "velocityCoef":F
    :cond_3
    iget v10, p0, Landroid/widget/Scroller;->mFinalX:I

    iput v10, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 353
    iget v10, p0, Landroid/widget/Scroller;->mFinalY:I

    iput v10, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 354
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/Scroller;->mFinished:Z

    goto/16 :goto_0

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 3
    .param p1, "extend"    # I

    .prologue
    .line 519
    invoke-virtual {p0}, Landroid/widget/Scroller;->timePassed()I

    move-result v0

    .line 520
    .local v0, "passed":I
    add-int v1, v0, p1

    iput v1, p0, Landroid/widget/Scroller;->mDuration:I

    .line 521
    iget v1, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    iput v1, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    .line 522
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 518
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 22
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .prologue
    .line 429
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Scroller;->mFlywheel:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Scroller;->mFinished:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 448
    :cond_0
    :goto_0
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mMode:I

    .line 449
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Scroller;->mFinished:Z

    .line 451
    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v16, v0

    .line 453
    .local v16, "velocity":F
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mVelocity:F

    .line 454
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/widget/Scroller;->getSplineFlingDuration(F)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mDuration:I

    .line 455
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/Scroller;->mStartTime:J

    .line 456
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mStartX:I

    .line 457
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mStartY:I

    .line 459
    const/16 v17, 0x0

    cmpl-float v17, v16, v17

    if-nez v17, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    .line 460
    .local v4, "coeffX":F
    :goto_1
    const/16 v17, 0x0

    cmpl-float v17, v16, v17

    if-nez v17, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    .line 462
    .local v5, "coeffY":F
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/widget/Scroller;->getSplineFlingDistance(F)D

    move-result-wide v14

    .line 463
    .local v14, "totalDistance":D
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->signum(F)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v18, v18, v14

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mDistance:I

    .line 465
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mMinX:I

    .line 466
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mMaxX:I

    .line 467
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mMinY:I

    .line 468
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mMaxY:I

    .line 470
    float-to-double v0, v4

    move-wide/from16 v18, v0

    mul-double v18, v18, v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    add-int v17, v17, p1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mFinalX:I

    .line 472
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mFinalX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mMaxX:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mFinalX:I

    .line 473
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mFinalX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mMinX:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mFinalX:I

    .line 475
    float-to-double v0, v5

    move-wide/from16 v18, v0

    mul-double v18, v18, v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    add-int v17, v17, p2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mFinalY:I

    .line 477
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mFinalY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mMaxY:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mFinalY:I

    .line 478
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mFinalY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mMinY:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mFinalY:I

    .line 427
    return-void

    .line 430
    .end local v4    # "coeffX":F
    .end local v5    # "coeffY":F
    .end local v14    # "totalDistance":D
    .end local v16    # "velocity":F
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v11

    .line 432
    .local v11, "oldVel":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mFinalX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mStartX:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v6, v0

    .line 433
    .local v6, "dx":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mFinalY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mStartY:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v7, v0

    .line 434
    .local v7, "dy":F
    float-to-double v0, v6

    move-wide/from16 v18, v0

    float-to-double v0, v7

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v8, v0

    .line 436
    .local v8, "hyp":F
    div-float v9, v6, v8

    .line 437
    .local v9, "ndx":F
    div-float v10, v7, v8

    .line 439
    .local v10, "ndy":F
    mul-float v12, v9, v11

    .line 440
    .local v12, "oldVelocityX":F
    mul-float v13, v10, v11

    .line 441
    .local v13, "oldVelocityY":F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->signum(F)F

    move-result v17

    invoke-static {v12}, Ljava/lang/Math;->signum(F)F

    move-result v18

    cmpl-float v17, v17, v18

    if-nez v17, :cond_0

    .line 442
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->signum(F)F

    move-result v17

    invoke-static {v13}, Ljava/lang/Math;->signum(F)F

    move-result v18

    cmpl-float v17, v17, v18

    if-nez v17, :cond_0

    .line 443
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v12

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 p3, v0

    .line 444
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v13

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 p4, v0

    goto/16 :goto_0

    .line 459
    .end local v6    # "dx":F
    .end local v7    # "dy":F
    .end local v8    # "hyp":F
    .end local v9    # "ndx":F
    .end local v10    # "ndy":F
    .end local v11    # "oldVel":F
    .end local v12    # "oldVelocityX":F
    .end local v13    # "oldVelocityY":F
    .restart local v16    # "velocity":F
    :cond_2
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v4, v17, v16

    .restart local v4    # "coeffX":F
    goto/16 :goto_1

    .line 460
    :cond_3
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v5, v17, v16

    .restart local v5    # "coeffY":F
    goto/16 :goto_2
.end method

.method public final forceFinished(Z)V
    .locals 0
    .param p1, "finished"    # Z

    .prologue
    .line 223
    iput-boolean p1, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 222
    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    .line 260
    iget v0, p0, Landroid/widget/Scroller;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 261
    iget v0, p0, Landroid/widget/Scroller;->mCurrVelocity:F

    .line 260
    :goto_0
    return v0

    .line 261
    :cond_0
    iget v0, p0, Landroid/widget/Scroller;->mVelocity:F

    iget v1, p0, Landroid/widget/Scroller;->mDeceleration:F

    invoke-virtual {p0}, Landroid/widget/Scroller;->timePassed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Landroid/widget/Scroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Landroid/widget/Scroller;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Landroid/widget/Scroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Landroid/widget/Scroller;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Landroid/widget/Scroller;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    return v0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 4
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    const/4 v0, 0x0

    .line 564
    iget-boolean v1, p0, Landroid/widget/Scroller;->mFinished:Z

    if-nez v1, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iget v2, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v3, p0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 565
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iget v2, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v3, p0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 564
    :cond_0
    return v0
.end method

.method public setFinalX(I)V
    .locals 2
    .param p1, "newX"    # I

    .prologue
    .line 542
    iput p1, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 543
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v1, p0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/Scroller;->mDeltaX:F

    .line 544
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 541
    return-void
.end method

.method public setFinalY(I)V
    .locals 2
    .param p1, "newY"    # I

    .prologue
    .line 555
    iput p1, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 556
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v1, p0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/Scroller;->mDeltaY:F

    .line 557
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 554
    return-void
.end method

.method public final setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 196
    invoke-direct {p0, p1}, Landroid/widget/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mDeceleration:F

    .line 197
    iput p1, p0, Landroid/widget/Scroller;->mFlingFriction:F

    .line 195
    return-void
.end method

.method public startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 374
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 373
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 2
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    const/4 v0, 0x0

    .line 392
    iput v0, p0, Landroid/widget/Scroller;->mMode:I

    .line 393
    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 394
    iput p5, p0, Landroid/widget/Scroller;->mDuration:I

    .line 395
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Scroller;->mStartTime:J

    .line 396
    iput p1, p0, Landroid/widget/Scroller;->mStartX:I

    .line 397
    iput p2, p0, Landroid/widget/Scroller;->mStartY:I

    .line 398
    add-int v0, p1, p3

    iput v0, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 399
    add-int v0, p2, p4

    iput v0, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 400
    int-to-float v0, p3

    iput v0, p0, Landroid/widget/Scroller;->mDeltaX:F

    .line 401
    int-to-float v0, p4

    iput v0, p0, Landroid/widget/Scroller;->mDeltaY:F

    .line 402
    iget v0, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    iput v0, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    .line 404
    iget-object v0, p0, Landroid/widget/Scroller;->mPm:Landroid/os/PowerManager;

    mul-int/lit16 v1, p5, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->cpuBoost(I)V

    .line 391
    return-void
.end method

.method public timePassed()I
    .locals 4

    .prologue
    .line 531
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/Scroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
