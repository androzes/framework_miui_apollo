.class Lcom/nemustech/tiffany/world/TFEffect$32;
.super Ljava/lang/Object;
.source "TFEffect.java"

# interfaces
.implements Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFEffect;->showEffectTwist(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFEffect;

.field final synthetic val$cusPanel:Lcom/nemustech/tiffany/world/TFCustomPanel;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffect;Lcom/nemustech/tiffany/world/TFCustomPanel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2076
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect$32;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iput-object p2, p0, Lcom/nemustech/tiffany/world/TFEffect$32;->val$cusPanel:Lcom/nemustech/tiffany/world/TFCustomPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEffectFinish(Lcom/nemustech/tiffany/world/TFObject;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 2077
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$32;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$32;->val$cusPanel:Lcom/nemustech/tiffany/world/TFCustomPanel;

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/world/TFEffect;->access$1900(Lcom/nemustech/tiffany/world/TFEffect;Lcom/nemustech/tiffany/world/TFModel;)V

    .line 2078
    return-void
.end method
