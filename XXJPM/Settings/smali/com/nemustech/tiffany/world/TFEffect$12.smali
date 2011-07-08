.class Lcom/nemustech/tiffany/world/TFEffect$12;
.super Ljava/lang/Object;
.source "TFEffect.java"

# interfaces
.implements Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFEffect;->showEffectAskew()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFEffect;

.field final synthetic val$centerWall:Lcom/nemustech/tiffany/world/TFWallHolder;

.field final synthetic val$panelBackL:Lcom/nemustech/tiffany/world/TFPanel;

.field final synthetic val$panelBackMain:Lcom/nemustech/tiffany/world/TFPanel;

.field final synthetic val$panelBackR:Lcom/nemustech/tiffany/world/TFPanel;

.field final synthetic val$panelFront:Lcom/nemustech/tiffany/world/TFPanel;

.field final synthetic val$sideWall:Lcom/nemustech/tiffany/world/TFWallHolder;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffect;Lcom/nemustech/tiffany/world/TFPanel;Lcom/nemustech/tiffany/world/TFWallHolder;Lcom/nemustech/tiffany/world/TFPanel;Lcom/nemustech/tiffany/world/TFPanel;Lcom/nemustech/tiffany/world/TFWallHolder;Lcom/nemustech/tiffany/world/TFPanel;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect$12;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iput-object p2, p0, Lcom/nemustech/tiffany/world/TFEffect$12;->val$panelBackL:Lcom/nemustech/tiffany/world/TFPanel;

    iput-object p3, p0, Lcom/nemustech/tiffany/world/TFEffect$12;->val$sideWall:Lcom/nemustech/tiffany/world/TFWallHolder;

    iput-object p4, p0, Lcom/nemustech/tiffany/world/TFEffect$12;->val$panelBackR:Lcom/nemustech/tiffany/world/TFPanel;

    iput-object p5, p0, Lcom/nemustech/tiffany/world/TFEffect$12;->val$panelFront:Lcom/nemustech/tiffany/world/TFPanel;

    iput-object p6, p0, Lcom/nemustech/tiffany/world/TFEffect$12;->val$centerWall:Lcom/nemustech/tiffany/world/TFWallHolder;

    iput-object p7, p0, Lcom/nemustech/tiffany/world/TFEffect$12;->val$panelBackMain:Lcom/nemustech/tiffany/world/TFPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEffectFinish(Lcom/nemustech/tiffany/world/TFObject;)V
    .locals 8
    .parameter "object"

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$12;->val$panelBackL:Lcom/nemustech/tiffany/world/TFPanel;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$12;->val$sideWall:Lcom/nemustech/tiffany/world/TFWallHolder;

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPanel;->detachFrom(Lcom/nemustech/tiffany/world/TFHolder;)Lcom/nemustech/tiffany/world/TFError;

    .line 1086
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$12;->val$panelBackR:Lcom/nemustech/tiffany/world/TFPanel;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$12;->val$sideWall:Lcom/nemustech/tiffany/world/TFWallHolder;

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPanel;->detachFrom(Lcom/nemustech/tiffany/world/TFHolder;)Lcom/nemustech/tiffany/world/TFError;

    .line 1087
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$12;->val$panelFront:Lcom/nemustech/tiffany/world/TFPanel;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$12;->val$centerWall:Lcom/nemustech/tiffany/world/TFWallHolder;

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPanel;->detachFrom(Lcom/nemustech/tiffany/world/TFHolder;)Lcom/nemustech/tiffany/world/TFError;

    .line 1089
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$12;->val$panelBackL:Lcom/nemustech/tiffany/world/TFPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPanel;->setVisibility(Z)V

    .line 1090
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$12;->val$panelBackR:Lcom/nemustech/tiffany/world/TFPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPanel;->setVisibility(Z)V

    .line 1092
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$12;->val$panelBackL:Lcom/nemustech/tiffany/world/TFPanel;

    const/high16 v1, -0x3fd0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFPanel;->locate(FFF)V

    .line 1093
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$12;->val$panelBackR:Lcom/nemustech/tiffany/world/TFPanel;

    const/high16 v1, 0x4030

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFPanel;->locate(FFF)V

    .line 1096
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$12;->val$panelFront:Lcom/nemustech/tiffany/world/TFPanel;

    const/4 v1, 0x0

    const/high16 v2, 0x4020

    const/4 v3, 0x0

    const v4, 0x3aebedfb

    const v5, 0x3bc49ba6

    const/high16 v6, 0x3f00

    const v7, 0x3c449ba6

    invoke-virtual/range {v0 .. v7}, Lcom/nemustech/tiffany/world/TFPanel;->move(FFFFFFF)V

    .line 1099
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$12;->val$panelBackL:Lcom/nemustech/tiffany/world/TFPanel;

    const/high16 v1, -0x4180

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x3b449ba6

    const v5, 0x3bc49ba6

    const/high16 v6, 0x3f00

    const v7, 0x3c449ba6

    invoke-virtual/range {v0 .. v7}, Lcom/nemustech/tiffany/world/TFPanel;->move(FFFFFFF)V

    .line 1100
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$12;->val$panelBackR:Lcom/nemustech/tiffany/world/TFPanel;

    const/high16 v1, 0x3e80

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x3b449ba6

    const v5, 0x3bc49ba6

    const/high16 v6, 0x3f00

    const v7, 0x3c449ba6

    invoke-virtual/range {v0 .. v7}, Lcom/nemustech/tiffany/world/TFPanel;->move(FFFFFFF)V

    .line 1102
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$12;->val$panelFront:Lcom/nemustech/tiffany/world/TFPanel;

    new-instance v1, Lcom/nemustech/tiffany/world/TFEffect$12$1;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/world/TFEffect$12$1;-><init>(Lcom/nemustech/tiffany/world/TFEffect$12;)V

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPanel;->setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V

    .line 1128
    return-void
.end method
