.class Lcom/nemustech/tiffany/world/TFPageFlipper$4$1;
.super Ljava/lang/Object;
.source "TFPageFlipper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFPageFlipper$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nemustech/tiffany/world/TFPageFlipper$4;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFPageFlipper$4;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$4$1;->this$1:Lcom/nemustech/tiffany/world/TFPageFlipper$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$4$1;->this$1:Lcom/nemustech/tiffany/world/TFPageFlipper$4;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPageFlipper$4;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$1000(Lcom/nemustech/tiffany/world/TFPageFlipper;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$4$1;->this$1:Lcom/nemustech/tiffany/world/TFPageFlipper$4;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFPageFlipper$4;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$400(Lcom/nemustech/tiffany/world/TFPageFlipper;)Lcom/nemustech/tiffany/world/TFView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 319
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$4$1;->this$1:Lcom/nemustech/tiffany/world/TFPageFlipper$4;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPageFlipper$4;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$1100(Lcom/nemustech/tiffany/world/TFPageFlipper;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$4$1;->this$1:Lcom/nemustech/tiffany/world/TFPageFlipper$4;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFPageFlipper$4;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$1000(Lcom/nemustech/tiffany/world/TFPageFlipper;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 320
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$4$1;->this$1:Lcom/nemustech/tiffany/world/TFPageFlipper$4;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPageFlipper$4;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$1202(Lcom/nemustech/tiffany/world/TFPageFlipper;Z)Z

    .line 321
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$4$1;->this$1:Lcom/nemustech/tiffany/world/TFPageFlipper$4;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPageFlipper$4;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$002(Lcom/nemustech/tiffany/world/TFPageFlipper;Lcom/nemustech/tiffany/world/TFWorld;)Lcom/nemustech/tiffany/world/TFWorld;

    .line 322
    return-void
.end method
