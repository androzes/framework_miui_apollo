.class Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;
.super Landroid/view/animation/Animation;
.source "TFFlipImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFFlipImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TFFlipRotate3dAnimation"
.end annotation


# static fields
.field public static final ROTATE_AXIS_X:I = 0x1

.field public static final ROTATE_AXIS_Y:I


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private final mCenterX:F

.field private final mCenterY:F

.field private final mDepthZ:F

.field private final mFromDegrees:F

.field private final mReverse:Z

.field private mRotateAxis:I

.field private final mToDegrees:F

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFFlipImage;


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/widget/TFFlipImage;FFFFFZ)V
    .locals 0
    .parameter
    .parameter "fromDegrees"
    .parameter "toDegrees"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "depthZ"
    .parameter "reverse"

    .prologue
    .line 885
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;->this$0:Lcom/nemustech/tiffany/widget/TFFlipImage;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 886
    iput p2, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;->mFromDegrees:F

    .line 887
    iput p3, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;->mToDegrees:F

    .line 888
    iput p4, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;->mCenterX:F

    .line 889
    iput p5, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;->mCenterY:F

    .line 890
    iput p6, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;->mDepthZ:F

    .line 891
    iput-boolean p7, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;->mReverse:Z

    .line 892
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 10
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/4 v9, 0x0

    .line 908
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;->mFromDegrees:F

    .line 909
    .local v5, fromDegrees:F
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;->mToDegrees:F

    sub-float/2addr v7, v5

    mul-float/2addr v7, p1

    add-float v4, v5, v7

    .line 911
    .local v4, degrees:F
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;->mCenterX:F

    .line 912
    .local v2, centerX:F
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;->mCenterY:F

    .line 913
    .local v3, centerY:F
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 915
    .local v1, camera:Landroid/graphics/Camera;
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    .line 917
    .local v6, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v1}, Landroid/graphics/Camera;->save()V

    .line 918
    iget-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;->mReverse:Z

    if-eqz v7, :cond_1

    .line 919
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;->mDepthZ:F

    mul-float/2addr v7, p1

    invoke-virtual {v1, v9, v9, v7}, Landroid/graphics/Camera;->translate(FFF)V

    .line 924
    :goto_0
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;->mRotateAxis:I

    .line 925
    .local v0, axis:I
    if-nez v0, :cond_2

    .line 926
    invoke-virtual {v1, v4}, Landroid/graphics/Camera;->rotateY(F)V

    .line 929
    :cond_0
    :goto_1
    invoke-virtual {v1, v6}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 930
    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    .line 932
    neg-float v7, v2

    neg-float v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 933
    invoke-virtual {v6, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 934
    return-void

    .line 921
    .end local v0           #axis:I
    :cond_1
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;->mDepthZ:F

    const/high16 v8, 0x3f80

    sub-float/2addr v8, p1

    mul-float/2addr v7, v8

    invoke-virtual {v1, v9, v9, v7}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_0

    .line 927
    .restart local v0       #axis:I
    :cond_2
    const/4 v7, 0x1

    if-ne v0, v7, :cond_0

    .line 928
    invoke-virtual {v1, v4}, Landroid/graphics/Camera;->rotateX(F)V

    goto :goto_1
.end method

.method public initialize(IIII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 902
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 903
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 904
    return-void
.end method

.method public setRotateAxis(I)V
    .locals 1
    .parameter "axis"

    .prologue
    .line 895
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 897
    :cond_0
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;->mRotateAxis:I

    .line 898
    :cond_1
    return-void
.end method
