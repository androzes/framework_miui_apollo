.class Lcom/android/server/am/UriPermission;
.super Ljava/lang/Object;
.source "UriPermission.java"


# instance fields
.field globalModeFlags:I

.field modeFlags:I

.field final readActivities:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/am/HistoryRecord;",
            ">;"
        }
    .end annotation
.end field

.field stringName:Ljava/lang/String;

.field final uid:I

.field final uri:Landroid/net/Uri;

.field final writeActivities:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/am/HistoryRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILandroid/net/Uri;)V
    .locals 1
    .parameter "_uid"
    .parameter "_uri"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    .line 29
    iput v0, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UriPermission;->readActivities:Ljava/util/HashSet;

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UriPermission;->writeActivities:Ljava/util/HashSet;

    .line 36
    iput p1, p0, Lcom/android/server/am/UriPermission;->uid:I

    .line 37
    iput-object p2, p0, Lcom/android/server/am/UriPermission;->uri:Landroid/net/Uri;

    .line 38
    return-void
.end method


# virtual methods
.method clearModes(I)V
    .locals 4
    .parameter "modeFlags"

    .prologue
    const/4 v3, 0x0

    .line 41
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    .line 42
    iget v2, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    .line 43
    and-int/lit8 p1, p1, -0x2

    .line 44
    iget-object v2, p0, Lcom/android/server/am/UriPermission;->readActivities:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 45
    iget-object v2, p0, Lcom/android/server/am/UriPermission;->readActivities:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/HistoryRecord;

    .line 46
    .local v1, r:Lcom/android/server/am/HistoryRecord;
    iget-object v2, v1, Lcom/android/server/am/HistoryRecord;->readUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 47
    iget-object v2, v1, Lcom/android/server/am/HistoryRecord;->readUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 48
    iput-object v3, v1, Lcom/android/server/am/HistoryRecord;->readUriPermissions:Ljava/util/HashSet;

    goto :goto_0

    .line 51
    .end local v1           #r:Lcom/android/server/am/HistoryRecord;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/UriPermission;->readActivities:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 54
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_5

    .line 55
    iget v2, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    .line 56
    and-int/lit8 p1, p1, -0x3

    .line 57
    iget-object v2, p0, Lcom/android/server/am/UriPermission;->readActivities:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 58
    iget-object v2, p0, Lcom/android/server/am/UriPermission;->readActivities:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/HistoryRecord;

    .line 59
    .restart local v1       #r:Lcom/android/server/am/HistoryRecord;
    iget-object v2, v1, Lcom/android/server/am/HistoryRecord;->writeUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 60
    iget-object v2, v1, Lcom/android/server/am/HistoryRecord;->writeUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 61
    iput-object v3, v1, Lcom/android/server/am/HistoryRecord;->writeUriPermissions:Ljava/util/HashSet;

    goto :goto_1

    .line 64
    .end local v1           #r:Lcom/android/server/am/HistoryRecord;
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/UriPermission;->readActivities:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 67
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 83
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "modeFlags=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    iget v0, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    const-string v0, " uid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/UriPermission;->uid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 86
    const-string v0, " globalModeFlags=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    iget v0, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->readActivities:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "readActivities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/UriPermission;->readActivities:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->writeActivities:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "writeActivities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/UriPermission;->writeActivities:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 94
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    iget-object v1, p0, Lcom/android/server/am/UriPermission;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/android/server/am/UriPermission;->stringName:Ljava/lang/String;

    .line 79
    :goto_0
    return-object v1

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 74
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "UriPermission{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p0, Lcom/android/server/am/UriPermission;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/UriPermission;->stringName:Ljava/lang/String;

    goto :goto_0
.end method
