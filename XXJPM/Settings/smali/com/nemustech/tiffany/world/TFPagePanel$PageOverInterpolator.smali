.class public abstract Lcom/nemustech/tiffany/world/TFPagePanel$PageOverInterpolator;
.super Ljava/lang/Object;
.source "TFPagePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFPagePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PageOverInterpolator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBufferCount()I
.end method

.method public abstract getElemCount()I
.end method

.method public abstract interpolate(F[F)I
.end method
