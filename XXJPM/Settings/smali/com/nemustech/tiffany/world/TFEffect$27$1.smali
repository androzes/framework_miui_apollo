.class Lcom/nemustech/tiffany/world/TFEffect$27$1;
.super Ljava/lang/Object;
.source "TFEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFEffect$27;->onEffectFinish(Lcom/nemustech/tiffany/world/TFObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nemustech/tiffany/world/TFEffect$27;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffect$27;)V
    .locals 0
    .parameter

    .prologue
    .line 1873
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect$27$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$27;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1874
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$27$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$27;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect$27;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$300(Lcom/nemustech/tiffany/world/TFEffect;)[Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1875
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$27$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$27;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect$27;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$300(Lcom/nemustech/tiffany/world/TFEffect;)[Landroid/view/View;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 1876
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$27$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$27;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect$27;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$300(Lcom/nemustech/tiffany/world/TFEffect;)[Landroid/view/View;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1877
    return-void
.end method
