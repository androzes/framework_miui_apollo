.class public Lcom/slsi/sec/android/HdmiStatus;
.super Ljava/lang/Object;
.source "HdmiStatus.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "hdmistatus_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native initHdmiStatus()V
.end method

.method public native setHdmiMode(I)V
.end method

.method public native setHdmiStatus(I)V
.end method
