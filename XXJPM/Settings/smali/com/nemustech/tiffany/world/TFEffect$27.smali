.class Lcom/nemustech/tiffany/world/TFEffect$27;
.super Ljava/lang/Object;
.source "TFEffect.java"

# interfaces
.implements Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFEffect;->showEffectGenie_FlexiblePanel(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFEffect;

.field final synthetic val$currentPage:Lcom/nemustech/tiffany/world/TFFlexiblePanel;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffect;Lcom/nemustech/tiffany/world/TFFlexiblePanel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1868
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect$27;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iput-object p2, p0, Lcom/nemustech/tiffany/world/TFEffect$27;->val$currentPage:Lcom/nemustech/tiffany/world/TFFlexiblePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEffectFinish(Lcom/nemustech/tiffany/world/TFObject;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$27;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$100(Lcom/nemustech/tiffany/world/TFEffect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$27;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$300(Lcom/nemustech/tiffany/world/TFEffect;)[Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$27;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$300(Lcom/nemustech/tiffany/world/TFEffect;)[Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 1871
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$27;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$1300(Lcom/nemustech/tiffany/world/TFEffect;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nemustech/tiffany/world/TFEffect$27$1;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/world/TFEffect$27$1;-><init>(Lcom/nemustech/tiffany/world/TFEffect$27;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1880
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$27;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$27;->val$currentPage:Lcom/nemustech/tiffany/world/TFFlexiblePanel;

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/world/TFEffect;->access$1900(Lcom/nemustech/tiffany/world/TFEffect;Lcom/nemustech/tiffany/world/TFModel;)V

    .line 1881
    return-void
.end method
