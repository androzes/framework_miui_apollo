.class public Landroid/divxdrm/mobile/DrmDivxRightsInfo;
.super Ljava/lang/Object;
.source "DrmDivxRightsInfo.java"


# instance fields
.field private cgmsaSignal:C

.field private drmMode:I

.field private useLimitID:I

.field private usedCounter:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCgmsaSignal()C
    .locals 1

    .prologue
    .line 45
    iget-char v0, p0, Landroid/divxdrm/mobile/DrmDivxRightsInfo;->cgmsaSignal:C

    return v0
.end method

.method public getDrmMode()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Landroid/divxdrm/mobile/DrmDivxRightsInfo;->drmMode:I

    return v0
.end method

.method public getUseLimitID()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Landroid/divxdrm/mobile/DrmDivxRightsInfo;->useLimitID:I

    return v0
.end method

.method public getUsedCounter()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Landroid/divxdrm/mobile/DrmDivxRightsInfo;->usedCounter:I

    return v0
.end method
