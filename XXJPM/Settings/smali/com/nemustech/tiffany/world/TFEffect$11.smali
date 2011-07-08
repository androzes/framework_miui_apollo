.class Lcom/nemustech/tiffany/world/TFEffect$11;
.super Ljava/lang/Object;
.source "TFEffect.java"

# interfaces
.implements Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFEffect;->showEffectEntranceDoor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFEffect;

.field final synthetic val$panelBack:Lcom/nemustech/tiffany/world/TFPanel;

.field final synthetic val$panelFrontL:Lcom/nemustech/tiffany/world/TFPanel;

.field final synthetic val$panelFrontR:Lcom/nemustech/tiffany/world/TFPanel;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffect;Lcom/nemustech/tiffany/world/TFPanel;Lcom/nemustech/tiffany/world/TFPanel;Lcom/nemustech/tiffany/world/TFPanel;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 996
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect$11;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iput-object p2, p0, Lcom/nemustech/tiffany/world/TFEffect$11;->val$panelBack:Lcom/nemustech/tiffany/world/TFPanel;

    iput-object p3, p0, Lcom/nemustech/tiffany/world/TFEffect$11;->val$panelFrontL:Lcom/nemustech/tiffany/world/TFPanel;

    iput-object p4, p0, Lcom/nemustech/tiffany/world/TFEffect$11;->val$panelFrontR:Lcom/nemustech/tiffany/world/TFPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEffectFinish(Lcom/nemustech/tiffany/world/TFObject;)V
    .locals 4
    .parameter "object"

    .prologue
    const/4 v3, 0x2

    .line 997
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$11;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFEffect;->access$1800(Lcom/nemustech/tiffany/world/TFEffect;)I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 998
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$11;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFEffect;->access$1808(Lcom/nemustech/tiffany/world/TFEffect;)I

    .line 1006
    :goto_0
    return-void

    .line 1000
    :cond_0
    const/4 v1, 0x3

    new-array v0, v1, [Lcom/nemustech/tiffany/world/TFModel;

    .line 1001
    .local v0, modelsToDelete:[Lcom/nemustech/tiffany/world/TFModel;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$11;->val$panelBack:Lcom/nemustech/tiffany/world/TFPanel;

    aput-object v2, v0, v1

    .line 1002
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$11;->val$panelFrontL:Lcom/nemustech/tiffany/world/TFPanel;

    aput-object v2, v0, v1

    .line 1003
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$11;->val$panelFrontR:Lcom/nemustech/tiffany/world/TFPanel;

    aput-object v1, v0, v3

    .line 1004
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$11;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v1, v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$2000(Lcom/nemustech/tiffany/world/TFEffect;[Lcom/nemustech/tiffany/world/TFModel;)V

    goto :goto_0
.end method
