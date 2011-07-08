.class public Lcom/nemustech/tiffany/world/TFCustomPanel$IdentityEffect;
.super Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;
.source "TFCustomPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFCustomPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IdentityEffect"
.end annotation


# instance fields
.field protected final mCustomPanel:Lcom/nemustech/tiffany/world/TFCustomPanel;


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/world/TFCustomPanel;)V
    .locals 0
    .parameter "customPanel"

    .prologue
    .line 599
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;-><init>()V

    .line 600
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFCustomPanel$IdentityEffect;->mCustomPanel:Lcom/nemustech/tiffany/world/TFCustomPanel;

    .line 601
    return-void
.end method


# virtual methods
.method public hasEnded()Z
    .locals 1

    .prologue
    .line 618
    const/4 v0, 0x1

    return v0
.end method

.method public onEnd()V
    .locals 0

    .prologue
    .line 615
    return-void
.end method

.method public onFrame(I)V
    .locals 0
    .parameter "ticks"

    .prologue
    .line 612
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 604
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFCustomPanel$IdentityEffect;->mCustomPanel:Lcom/nemustech/tiffany/world/TFCustomPanel;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFCustomPanel;->getVertex()[F

    move-result-object v0

    .line 605
    .local v0, vertex:[F
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFCustomPanel$IdentityEffect;->mCustomPanel:Lcom/nemustech/tiffany/world/TFCustomPanel;

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFCustomPanel$IdentityEffect;->mCustomPanel:Lcom/nemustech/tiffany/world/TFCustomPanel;

    invoke-virtual {v2}, Lcom/nemustech/tiffany/world/TFCustomPanel;->getVertex()[F

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/world/TFCustomPanel;->loadIdentityVertex([F)V

    .line 606
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFCustomPanel$IdentityEffect;->mCustomPanel:Lcom/nemustech/tiffany/world/TFCustomPanel;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFCustomPanel;->requestUpdateVertex()V

    .line 607
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFCustomPanel$IdentityEffect;->mCustomPanel:Lcom/nemustech/tiffany/world/TFCustomPanel;

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFCustomPanel$IdentityEffect;->mCustomPanel:Lcom/nemustech/tiffany/world/TFCustomPanel;

    invoke-virtual {v2}, Lcom/nemustech/tiffany/world/TFCustomPanel;->getTexCoord()[F

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/world/TFCustomPanel;->loadIdentityTexCoord([F)V

    .line 608
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFCustomPanel$IdentityEffect;->mCustomPanel:Lcom/nemustech/tiffany/world/TFCustomPanel;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFCustomPanel;->requestUpdateTexCoord()V

    .line 609
    return-void
.end method
