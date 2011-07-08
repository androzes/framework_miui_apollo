.class public Landroid/divxdrm/mobile/DrmDivxBestRight;
.super Ljava/lang/Object;
.source "DrmDivxBestRight.java"


# instance fields
.field private curCount:J

.field private drmMode:I

.field private orgCount:J

.field private rightStatus:I

.field private tvOut:Z

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurCount()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Landroid/divxdrm/mobile/DrmDivxBestRight;->curCount:J

    return-wide v0
.end method

.method public getDivxDrmVersion()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Landroid/divxdrm/mobile/DrmDivxBestRight;->version:I

    return v0
.end method

.method public getDrmMode()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Landroid/divxdrm/mobile/DrmDivxBestRight;->drmMode:I

    return v0
.end method

.method public getOrgCount()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Landroid/divxdrm/mobile/DrmDivxBestRight;->orgCount:J

    return-wide v0
.end method

.method public getRightStatus()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Landroid/divxdrm/mobile/DrmDivxBestRight;->rightStatus:I

    return v0
.end method

.method public getTVOut()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Landroid/divxdrm/mobile/DrmDivxBestRight;->tvOut:Z

    return v0
.end method
