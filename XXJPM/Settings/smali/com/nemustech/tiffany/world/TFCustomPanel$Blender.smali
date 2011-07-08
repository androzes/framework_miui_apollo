.class public abstract Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;
.super Ljava/lang/Object;
.source "TFCustomPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFCustomPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Blender"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract hasEnded()Z
.end method

.method public abstract onEnd()V
.end method

.method public abstract onFrame(I)V
.end method

.method public abstract onStart()V
.end method
