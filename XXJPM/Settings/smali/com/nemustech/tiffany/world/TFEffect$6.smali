.class Lcom/nemustech/tiffany/world/TFEffect$6;
.super Ljava/lang/Object;
.source "TFEffect.java"

# interfaces
.implements Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFEffect;->showEffectFlip(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFEffect;

.field final synthetic val$bFinalReverse:Z

.field final synthetic val$panel:Lcom/nemustech/tiffany/world/TFPanel;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffect;Lcom/nemustech/tiffany/world/TFPanel;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 788
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect$6;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iput-object p2, p0, Lcom/nemustech/tiffany/world/TFEffect$6;->val$panel:Lcom/nemustech/tiffany/world/TFPanel;

    iput-boolean p3, p0, Lcom/nemustech/tiffany/world/TFEffect$6;->val$bFinalReverse:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEffectFinish(Lcom/nemustech/tiffany/world/TFObject;)V
    .locals 5
    .parameter "object"

    .prologue
    const/high16 v4, 0x4334

    const v3, 0x3e99999a

    const/4 v2, 0x0

    .line 789
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$6;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$1800(Lcom/nemustech/tiffany/world/TFEffect;)I

    move-result v0

    if-nez v0, :cond_1

    .line 790
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$6;->val$panel:Lcom/nemustech/tiffany/world/TFPanel;

    const v1, 0x3ba71de8

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/nemustech/tiffany/world/TFPanel;->move(FFFF)V

    .line 791
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFEffect$6;->val$bFinalReverse:Z

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$6;->val$panel:Lcom/nemustech/tiffany/world/TFPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/nemustech/tiffany/world/TFPanel;->rotate(FFFI)V

    .line 795
    :goto_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$6;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$1808(Lcom/nemustech/tiffany/world/TFEffect;)I

    .line 799
    :goto_1
    return-void

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$6;->val$panel:Lcom/nemustech/tiffany/world/TFPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/nemustech/tiffany/world/TFPanel;->rotate(FFFI)V

    goto :goto_0

    .line 797
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$6;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$6;->val$panel:Lcom/nemustech/tiffany/world/TFPanel;

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/world/TFEffect;->access$1900(Lcom/nemustech/tiffany/world/TFEffect;Lcom/nemustech/tiffany/world/TFModel;)V

    goto :goto_1
.end method
