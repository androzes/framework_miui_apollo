.class Lcom/nemustech/tiffany/world/TFEffect$3$1;
.super Ljava/lang/Object;
.source "TFEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFEffect$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nemustech/tiffany/world/TFEffect$3;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffect$3;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect$3$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$3$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$3;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect$3;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$800(Lcom/nemustech/tiffany/world/TFEffect;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$3$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$3;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFEffect$3;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFEffect;->access$700(Lcom/nemustech/tiffany/world/TFEffect;)Lcom/nemustech/tiffany/world/TFView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 292
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$3$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$3;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect$3;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$900(Lcom/nemustech/tiffany/world/TFEffect;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$3$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$3;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFEffect$3;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFEffect;->access$800(Lcom/nemustech/tiffany/world/TFEffect;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 294
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$3$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$3;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect$3;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$1300(Lcom/nemustech/tiffany/world/TFEffect;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nemustech/tiffany/world/TFEffect$3$1$1;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/world/TFEffect$3$1$1;-><init>(Lcom/nemustech/tiffany/world/TFEffect$3$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 301
    return-void
.end method
