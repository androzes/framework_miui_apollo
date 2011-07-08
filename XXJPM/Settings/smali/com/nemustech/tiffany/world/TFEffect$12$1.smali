.class Lcom/nemustech/tiffany/world/TFEffect$12$1;
.super Ljava/lang/Object;
.source "TFEffect.java"

# interfaces
.implements Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFEffect$12;->onEffectFinish(Lcom/nemustech/tiffany/world/TFObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nemustech/tiffany/world/TFEffect$12;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffect$12;)V
    .locals 0
    .parameter

    .prologue
    .line 1104
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect$12$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEffectFinish(Lcom/nemustech/tiffany/world/TFObject;)V
    .locals 8
    .parameter "object"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1105
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$12$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$12;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect$12;->val$panelBackL:Lcom/nemustech/tiffany/world/TFPanel;

    invoke-virtual {v0, v2}, Lcom/nemustech/tiffany/world/TFPanel;->setVisibility(Z)V

    .line 1106
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$12$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$12;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect$12;->val$panelBackR:Lcom/nemustech/tiffany/world/TFPanel;

    invoke-virtual {v0, v2}, Lcom/nemustech/tiffany/world/TFPanel;->setVisibility(Z)V

    .line 1108
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$12$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$12;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect$12;->val$panelBackMain:Lcom/nemustech/tiffany/world/TFPanel;

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$12$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$12;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect$12;->val$centerWall:Lcom/nemustech/tiffany/world/TFWallHolder;

    invoke-virtual {v0, v2}, Lcom/nemustech/tiffany/world/TFPanel;->attachTo(Lcom/nemustech/tiffany/world/TFHolder;)Lcom/nemustech/tiffany/world/TFError;

    .line 1110
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$12$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$12;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect$12;->val$centerWall:Lcom/nemustech/tiffany/world/TFWallHolder;

    const v5, 0x3b83126f

    const v6, 0x3ecccccd

    move v2, v1

    move v3, v1

    move v4, v1

    move v7, v1

    invoke-virtual/range {v0 .. v7}, Lcom/nemustech/tiffany/world/TFWallHolder;->move(FFFFFFF)V

    .line 1111
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$12$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$12;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect$12;->val$centerWall:Lcom/nemustech/tiffany/world/TFWallHolder;

    const v2, 0x3dcccccd

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFWallHolder;->rotate(FFFI)V

    .line 1113
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$12$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$12;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect$12;->val$centerWall:Lcom/nemustech/tiffany/world/TFWallHolder;

    new-instance v1, Lcom/nemustech/tiffany/world/TFEffect$12$1$1;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/world/TFEffect$12$1$1;-><init>(Lcom/nemustech/tiffany/world/TFEffect$12$1;)V

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFWallHolder;->setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V

    .line 1126
    return-void
.end method
