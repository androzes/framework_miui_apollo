.class Lcom/nemustech/tiffany/world/TFEffect$14;
.super Ljava/lang/Object;
.source "TFEffect.java"

# interfaces
.implements Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFEffect;->showEffectHorizontalRow(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFEffect;

.field final synthetic val$panel:[Lcom/nemustech/tiffany/world/TFPanel;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffect;[Lcom/nemustech/tiffany/world/TFPanel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1219
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect$14;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iput-object p2, p0, Lcom/nemustech/tiffany/world/TFEffect$14;->val$panel:[Lcom/nemustech/tiffany/world/TFPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEffectFinish(Lcom/nemustech/tiffany/world/TFObject;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$14;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$1808(Lcom/nemustech/tiffany/world/TFEffect;)I

    .line 1221
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$14;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$1800(Lcom/nemustech/tiffany/world/TFEffect;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$14;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$14;->val$panel:[Lcom/nemustech/tiffany/world/TFPanel;

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/world/TFEffect;->access$2000(Lcom/nemustech/tiffany/world/TFEffect;[Lcom/nemustech/tiffany/world/TFModel;)V

    .line 1224
    :cond_0
    return-void
.end method
