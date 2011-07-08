.class Lcom/nemustech/tiffany/world/TFEffect$19$1;
.super Ljava/lang/Object;
.source "TFEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFEffect$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nemustech/tiffany/world/TFEffect$19;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffect$19;)V
    .locals 0
    .parameter

    .prologue
    .line 1554
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect$19$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$19$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$19;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect$19;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$800(Lcom/nemustech/tiffany/world/TFEffect;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$19$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$19;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFEffect$19;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFEffect;->access$2100(Lcom/nemustech/tiffany/world/TFEffect;)[Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$19$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$19;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect$19;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFEffect;->access$400(Lcom/nemustech/tiffany/world/TFEffect;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1557
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$19$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$19;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect$19;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$800(Lcom/nemustech/tiffany/world/TFEffect;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$19$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$19;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFEffect$19;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFEffect;->access$2100(Lcom/nemustech/tiffany/world/TFEffect;)[Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$19$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$19;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect$19;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFEffect;->access$500(Lcom/nemustech/tiffany/world/TFEffect;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1558
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$19$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$19;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect$19;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$900(Lcom/nemustech/tiffany/world/TFEffect;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$19$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$19;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFEffect$19;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFEffect;->access$800(Lcom/nemustech/tiffany/world/TFEffect;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1559
    return-void
.end method
