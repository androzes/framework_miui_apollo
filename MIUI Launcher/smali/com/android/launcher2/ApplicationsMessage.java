package com.android.launcher2; class ApplicationsMessage {/*

.class public Lcom/android/launcher2/ApplicationsMessage;
.super Ljava/lang/Object;
.source "ApplicationsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/ApplicationsMessage$MessageReceiver;,
        Lcom/android/launcher2/ApplicationsMessage$IconMessage;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final mLoadedApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher2/ApplicationsMessage$IconMessage;",
            ">;"
        }
    .end annotation
.end field

.field mMessageReceiver:Lcom/android/launcher2/ApplicationsMessage$MessageReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    #p0=(Reference);
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    .line 45
    iput-object p1, p0, Lcom/android/launcher2/ApplicationsMessage;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/ApplicationsMessage;Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/ApplicationsMessage;->updateMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 50
    .local v0, updateMessageFilter:Landroid/content/IntentFilter;
    #v0=(Reference);
    const-string v1, "android.intent.action.APPLICATION_MESSAGE_UPDATE"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    new-instance v1, Lcom/android/launcher2/ApplicationsMessage$MessageReceiver;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/launcher2/ApplicationsMessage$MessageReceiver;-><init>(Lcom/android/launcher2/ApplicationsMessage;)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/launcher2/ApplicationsMessage;->mMessageReceiver:Lcom/android/launcher2/ApplicationsMessage$MessageReceiver;

    .line 52
    iget-object v1, p0, Lcom/android/launcher2/ApplicationsMessage;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher2/ApplicationsMessage;->mMessageReceiver:Lcom/android/launcher2/ApplicationsMessage$MessageReceiver;

    #v2=(Reference);
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    return-void
.end method

.method private updateMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "componentName"
    .parameter "message"

    .prologue
    .line 109
    iget-object v3, p0, Lcom/android/launcher2/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    #v3=(Reference);
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 110
    iget-object v3, p0, Lcom/android/launcher2/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    #v3=(Reference);
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/ApplicationsMessage$IconMessage;

    .line 111
    .local v0, im:Lcom/android/launcher2/ApplicationsMessage$IconMessage;
    invoke-interface {v0, p2}, Lcom/android/launcher2/ApplicationsMessage$IconMessage;->setMessage(Ljava/lang/CharSequence;)V

    .line 112
    check-cast v0, Lcom/android/launcher2/ShortcutIcon;

    .end local v0           #im:Lcom/android/launcher2/ApplicationsMessage$IconMessage;
    invoke-virtual {v0}, Lcom/android/launcher2/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/launcher2/ShortcutInfo;

    .line 113
    .local v2, si:Lcom/android/launcher2/ShortcutInfo;
    iget-object v3, p0, Lcom/android/launcher2/ApplicationsMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v1

    .line 114
    .local v1, lc:Lcom/android/launcher2/Launcher;
    #v1=(Reference);
    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->getParentFolderInfo(Lcom/android/launcher2/ShortcutInfo;)Lcom/android/launcher2/FolderInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/ApplicationsMessage;->updateFolderMessage(Lcom/android/launcher2/FolderInfo;)V

    .line 116
    .end local v1           #lc:Lcom/android/launcher2/Launcher;
    .end local v2           #si:Lcom/android/launcher2/ShortcutInfo;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void
.end method


# virtual methods
.method public addApplication(Lcom/android/launcher2/ShortcutIcon;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "icon"
    .parameter "componentName"

    .prologue
    .line 64
    if-eqz p2, :cond_1

    .line 65
    iget-object v0, p0, Lcom/android/launcher2/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    #v0=(Reference);
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/launcher2/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    #v0=(Reference);
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ApplicationsMessage$IconMessage;

    invoke-interface {v0}, Lcom/android/launcher2/ApplicationsMessage$IconMessage;->getMessage()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/ShortcutIcon;->setMessage(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/android/launcher2/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    #v0=(Conflicted);
    iget-object v0, p0, Lcom/android/launcher2/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    #v0=(Reference);
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_1
    #v0=(Conflicted);
    return-void
.end method

.method public destory()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/launcher2/ApplicationsMessage;->mContext:Landroid/content/Context;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/launcher2/ApplicationsMessage;->mMessageReceiver:Lcom/android/launcher2/ApplicationsMessage$MessageReceiver;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/launcher2/ApplicationsMessage;->mMessageReceiver:Lcom/android/launcher2/ApplicationsMessage$MessageReceiver;

    .line 124
    iget-object v0, p0, Lcom/android/launcher2/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 125
    return-void
.end method

.method public onLaunchApplication(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "componentName"

    .prologue
    .line 119
    return-void
.end method

.method public removeApplication(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 74
    new-instance v1, Ljava/util/ArrayList;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v1, cl:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    #v1=(Reference);
    iget-object v3, p0, Lcom/android/launcher2/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    #v0=(Conflicted);v2=(Reference);v3=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/content/ComponentName;

    .line 76
    .local v0, c:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 77
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    .end local v0           #c:Landroid/content/ComponentName;
    :cond_1
    #v0=(Conflicted);
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    #v3=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/content/ComponentName;

    .line 81
    .restart local v0       #c:Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/launcher2/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    #v3=(Reference);
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 83
    .end local v0           #c:Landroid/content/ComponentName;
    :cond_2
    #v0=(Conflicted);v3=(Boolean);
    return-void
.end method

.method public requareUpdateMessages()V
    .locals 2

    .prologue
    .line 56
    iget-object v1, p0, Lcom/android/launcher2/ApplicationsMessage;->mMessageReceiver:Lcom/android/launcher2/ApplicationsMessage$MessageReceiver;

    #v1=(Reference);
    if-nez v1, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/android/launcher2/ApplicationsMessage;->initialize()V

    .line 59
    :cond_0
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    const-string v1, "android.intent.action.APPLICATION_MESSAGE_QUERY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/launcher2/ApplicationsMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 61
    return-void
.end method

.method public updateFolderMessage(Lcom/android/launcher2/FolderInfo;)V
    .locals 10
    .parameter "info"

    .prologue
    .line 86
    if-eqz p1, :cond_0

    .line 87
    const/4 v5, 0x0

    .line 88
    .local v5, updateCount:I
    #v5=(Null);
    iget-object v6, p0, Lcom/android/launcher2/ApplicationsMessage;->mContext:Landroid/content/Context;

    #v6=(Reference);
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/launcher2/Launcher;->getFolderIcon(Lcom/android/launcher2/FolderInfo;)Lcom/android/launcher2/FolderIcon;

    move-result-object v1

    .line 90
    .local v1, fi:Lcom/android/launcher2/FolderIcon;
    #v1=(Reference);
    if-nez v1, :cond_1

    .line 106
    .end local v1           #fi:Lcom/android/launcher2/FolderIcon;
    .end local v5           #updateCount:I
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    return-void

    .line 93
    .restart local v1       #fi:Lcom/android/launcher2/FolderIcon;
    .restart local v5       #updateCount:I
    :cond_1
    #v0=(Uninit);v1=(Reference);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Null);v6=(Reference);v7=(Uninit);v8=(Uninit);v9=(Uninit);
    const/4 v4, 0x0

    .line 94
    .local v4, si:Lcom/android/launcher2/ShortcutInfo;
    #v4=(Null);
    iget-object v6, p0, Lcom/android/launcher2/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    #v0=(Conflicted);v2=(Reference);v3=(Conflicted);v4=(Reference);v5=(Integer);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/android/launcher2/ApplicationsMessage$IconMessage;

    .line 95
    .local v3, imc:Lcom/android/launcher2/ApplicationsMessage$IconMessage;
    move-object v0, v3

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/ShortcutIcon;

    move-object v6, v0

    #v6=(Reference);
    invoke-virtual {v6}, Lcom/android/launcher2/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #si:Lcom/android/launcher2/ShortcutInfo;
    check-cast v4, Lcom/android/launcher2/ShortcutInfo;

    .line 96
    .restart local v4       #si:Lcom/android/launcher2/ShortcutInfo;
    iget-wide v6, v4, Lcom/android/launcher2/ShortcutInfo;->container:J

    #v6=(LongLo);v7=(LongHi);
    iget-wide v8, p1, Lcom/android/launcher2/FolderInfo;->id:J

    #v8=(LongLo);v9=(LongHi);
    cmp-long v6, v6, v8

    #v6=(Byte);
    if-nez v6, :cond_2

    invoke-interface {v3}, Lcom/android/launcher2/ApplicationsMessage$IconMessage;->isEmptyMessage()Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_2

    .line 97
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 100
    .end local v3           #imc:Lcom/android/launcher2/ApplicationsMessage$IconMessage;
    :cond_3
    #v0=(Conflicted);v3=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    if-nez v5, :cond_4

    .line 101
    const/4 v6, 0x0

    #v6=(Null);
    invoke-virtual {v1, v6}, Lcom/android/launcher2/FolderIcon;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 103
    :cond_4
    #v6=(Boolean);
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v1, v6}, Lcom/android/launcher2/FolderIcon;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

*/}
