.class Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;
.super Landroid/view/animation/Animation;
.source "TFCubicRotateAnimation.java"


# static fields
.field public static final AXIS_X:I = 0x1

.field public static final AXIS_Y:I = 0x0

.field private static final DEFAULT_ANIMATION_DURATION:I = 0x12c

.field public static final ROTATE_DOWN_IN:I = 0x6

.field public static final ROTATE_DOWN_OUT:I = 0x7

.field public static final ROTATE_LEFT_IN:I = 0x2

.field public static final ROTATE_LEFT_OUT:I = 0x3

.field public static final ROTATE_RIGHT_IN:I = 0x0

.field public static final ROTATE_RIGHT_OUT:I = 0x1

.field public static final ROTATE_UP_IN:I = 0x4

.field public static final ROTATE_UP_OUT:I = 0x5


# instance fields
.field private final mAxis:I

.field private mCamera:Landroid/graphics/Camera;

.field private mCenterX:F

.field private mCenterY:F

.field private final mFromDegrees:F

.field private final mIsOutAnimation:Z

.field private final mToDegrees:F


# direct methods
.method public constructor <init>(I)V
    .locals 7
    .parameter "rotationType"

    .prologue
    const/high16 v6, 0x42b4

    const/high16 v5, -0x3d4c

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 66
    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->setDuration(J)V

    .line 68
    packed-switch p1, :pswitch_data_0

    .line 126
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported rotation type for TFRotate3dAnimation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :pswitch_0
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mAxis:I

    .line 71
    iput v6, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mFromDegrees:F

    .line 72
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mToDegrees:F

    .line 73
    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mIsOutAnimation:Z

    .line 129
    :goto_0
    return-void

    .line 77
    :pswitch_1
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mAxis:I

    .line 78
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mFromDegrees:F

    .line 79
    iput v5, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mToDegrees:F

    .line 80
    iput-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mIsOutAnimation:Z

    goto :goto_0

    .line 84
    :pswitch_2
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mAxis:I

    .line 85
    iput v5, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mFromDegrees:F

    .line 86
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mToDegrees:F

    .line 87
    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mIsOutAnimation:Z

    goto :goto_0

    .line 91
    :pswitch_3
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mAxis:I

    .line 92
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mFromDegrees:F

    .line 93
    iput v6, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mToDegrees:F

    .line 94
    iput-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mIsOutAnimation:Z

    goto :goto_0

    .line 98
    :pswitch_4
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mAxis:I

    .line 99
    iput v6, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mFromDegrees:F

    .line 100
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mToDegrees:F

    .line 101
    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mIsOutAnimation:Z

    goto :goto_0

    .line 105
    :pswitch_5
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mAxis:I

    .line 106
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mFromDegrees:F

    .line 107
    iput v5, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mToDegrees:F

    .line 108
    iput-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mIsOutAnimation:Z

    goto :goto_0

    .line 112
    :pswitch_6
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mAxis:I

    .line 113
    iput v5, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mFromDegrees:F

    .line 114
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mToDegrees:F

    .line 115
    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mIsOutAnimation:Z

    goto :goto_0

    .line 119
    :pswitch_7
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mAxis:I

    .line 120
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mFromDegrees:F

    .line 121
    iput v6, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mToDegrees:F

    .line 122
    iput-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mIsOutAnimation:Z

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 18
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 143
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mIsOutAnimation:Z

    move v13, v0

    if-eqz v13, :cond_0

    const v13, 0x3f59999a

    cmpl-float v13, p1, v13

    if-gtz v13, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mIsOutAnimation:Z

    move v13, v0

    if-nez v13, :cond_2

    const v13, 0x3e19999a

    cmpg-float v13, p1, v13

    if-gez v13, :cond_2

    .line 146
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    .line 147
    .local v7, matrix:Landroid/graphics/Matrix;
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v7, v13, v14}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 148
    const v13, 0x7effffff

    const v14, 0x7effffff

    invoke-virtual {v7, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 184
    :goto_0
    return-void

    .line 153
    .end local v7           #matrix:Landroid/graphics/Matrix;
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mFromDegrees:F

    move v5, v0

    .line 154
    .local v5, fromDegrees:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mToDegrees:F

    move v13, v0

    sub-float/2addr v13, v5

    mul-float v13, v13, p1

    add-float v4, v5, v13

    .line 156
    .local v4, degrees:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mCenterX:F

    move v2, v0

    .line 157
    .local v2, centerX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mCenterY:F

    move v3, v0

    .line 158
    .local v3, centerY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mCamera:Landroid/graphics/Camera;

    move-object v1, v0

    .line 160
    .local v1, camera:Landroid/graphics/Camera;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mAxis:I

    move v13, v0

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    move v6, v3

    .line 161
    .local v6, half:F
    :goto_1
    const/high16 v13, 0x4000

    div-float v13, v4, v13

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    .line 162
    .local v8, radianOfDegreeHalf:D
    const/high16 v13, 0x4000

    float-to-double v14, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-float v14, v14

    mul-float v10, v13, v14

    .line 163
    .local v10, tmp:F
    float-to-double v13, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    double-to-float v11, v13

    .line 164
    .local v11, xy_offset:F
    float-to-double v13, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    double-to-float v12, v13

    .line 166
    .local v12, z_offset:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    .line 168
    .restart local v7       #matrix:Landroid/graphics/Matrix;
    invoke-virtual {v1}, Landroid/graphics/Camera;->save()V

    .line 170
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mAxis:I

    move v13, v0

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 171
    const/4 v13, 0x0

    invoke-virtual {v1, v13, v11, v12}, Landroid/graphics/Camera;->translate(FFF)V

    .line 172
    invoke-virtual {v1, v4}, Landroid/graphics/Camera;->rotateX(F)V

    .line 178
    :goto_2
    invoke-virtual {v1, v7}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 179
    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    .line 181
    neg-float v13, v2

    neg-float v14, v3

    invoke-virtual {v7, v13, v14}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 182
    invoke-virtual {v7, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .end local v6           #half:F
    .end local v7           #matrix:Landroid/graphics/Matrix;
    .end local v8           #radianOfDegreeHalf:D
    .end local v10           #tmp:F
    .end local v11           #xy_offset:F
    .end local v12           #z_offset:F
    :cond_3
    move v6, v2

    .line 160
    goto :goto_1

    .line 174
    .restart local v6       #half:F
    .restart local v7       #matrix:Landroid/graphics/Matrix;
    .restart local v8       #radianOfDegreeHalf:D
    .restart local v10       #tmp:F
    .restart local v11       #xy_offset:F
    .restart local v12       #z_offset:F
    :cond_4
    const/4 v13, 0x0

    invoke-virtual {v1, v11, v13, v12}, Landroid/graphics/Camera;->translate(FFF)V

    .line 175
    invoke-virtual {v1, v4}, Landroid/graphics/Camera;->rotateY(F)V

    goto :goto_2
.end method

.method public initialize(IIII)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    const/high16 v1, 0x4000

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 134
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mCamera:Landroid/graphics/Camera;

    .line 136
    int-to-float v0, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mCenterX:F

    .line 137
    int-to-float v0, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFCubicRotateAnimation;->mCenterY:F

    .line 138
    return-void
.end method
