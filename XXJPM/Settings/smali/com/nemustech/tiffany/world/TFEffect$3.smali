.class Lcom/nemustech/tiffany/world/TFEffect$3;
.super Ljava/lang/Object;
.source "TFEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFEffect;->prvOnFinishEffect([Lcom/nemustech/tiffany/world/TFModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFEffect;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffect;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect$3;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$3;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$300(Lcom/nemustech/tiffany/world/TFEffect;)[Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$3;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFEffect;->access$400(Lcom/nemustech/tiffany/world/TFEffect;)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$3;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$300(Lcom/nemustech/tiffany/world/TFEffect;)[Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$3;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFEffect;->access$500(Lcom/nemustech/tiffany/world/TFEffect;)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$3;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$600(Lcom/nemustech/tiffany/world/TFEffect;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$3;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$300(Lcom/nemustech/tiffany/world/TFEffect;)[Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$3;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFEffect;->access$500(Lcom/nemustech/tiffany/world/TFEffect;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 284
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$3;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$300(Lcom/nemustech/tiffany/world/TFEffect;)[Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$3;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFEffect;->access$500(Lcom/nemustech/tiffany/world/TFEffect;)I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$3;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$300(Lcom/nemustech/tiffany/world/TFEffect;)[Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$3;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFEffect;->access$400(Lcom/nemustech/tiffany/world/TFEffect;)I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$3;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$1300(Lcom/nemustech/tiffany/world/TFEffect;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nemustech/tiffany/world/TFEffect$3$1;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/world/TFEffect$3$1;-><init>(Lcom/nemustech/tiffany/world/TFEffect$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 303
    return-void
.end method
