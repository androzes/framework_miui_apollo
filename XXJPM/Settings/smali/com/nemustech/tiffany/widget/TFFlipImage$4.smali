.class Lcom/nemustech/tiffany/widget/TFFlipImage$4;
.super Ljava/lang/Object;
.source "TFFlipImage.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/widget/TFFlipImage;->doFlipBeforeAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFFlipImage;

.field final synthetic val$currentDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$frontBottom:Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;

.field final synthetic val$frontTop:Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFFlipImage;Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 512
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$4;->this$0:Lcom/nemustech/tiffany/widget/TFFlipImage;

    iput-object p2, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$4;->val$frontTop:Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;

    iput-object p3, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$4;->val$frontBottom:Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;

    iput-object p4, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$4;->val$currentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "ani"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 504
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$4;->this$0:Lcom/nemustech/tiffany/widget/TFFlipImage;

    invoke-static {v0, v2, v2}, Lcom/nemustech/tiffany/widget/TFFlipImage;->access$100(Lcom/nemustech/tiffany/widget/TFFlipImage;ZZ)V

    .line 505
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$4;->val$frontTop:Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$4;->this$0:Lcom/nemustech/tiffany/widget/TFFlipImage;

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFFlipImage;->access$202(Lcom/nemustech/tiffany/widget/TFFlipImage;Z)Z

    .line 507
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "ani"

    .prologue
    .line 510
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "ani"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$4;->val$frontBottom:Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$4;->val$currentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;->setFrameImage(Landroid/graphics/drawable/Drawable;)V

    .line 514
    return-void
.end method
