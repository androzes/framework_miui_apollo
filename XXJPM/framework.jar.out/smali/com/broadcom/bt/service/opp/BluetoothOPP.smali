.class public Lcom/broadcom/bt/service/opp/BluetoothOPP;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothOPP.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothOPP"

.field private static final TIMEOUT_OCCURRED:I = 0x1


# instance fields
.field mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

.field private mOppEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

.field private mOppService:Lcom/broadcom/bt/service/opp/IOppService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/broadcom/bt/service/opp/IOppService;Landroid/content/ServiceConnection;)V
    .locals 3
    .parameter "ctx"
    .parameter "service"
    .parameter "appServiceConn"

    .prologue
    .line 106
    invoke-direct {p0, p1, p3}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 95
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mOppEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

    .line 179
    new-instance v1, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;-><init>(Lcom/broadcom/bt/service/opp/BluetoothOPP;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

    .line 109
    iput-object p2, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mOppService:Lcom/broadcom/bt/service/opp/IOppService;

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mOppService:Lcom/broadcom/bt/service/opp/IOppService;

    iget-object v2, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/opp/IOppService;->registerCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 113
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/opp/IOppService;)V
    .locals 3
    .parameter "service"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 95
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mOppEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

    .line 179
    new-instance v1, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;-><init>(Lcom/broadcom/bt/service/opp/BluetoothOPP;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

    .line 129
    const-string v1, "BluetoothOPP"

    const-string v2, "OppProxy Constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iput-object p1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mOppService:Lcom/broadcom/bt/service/opp/IOppService;

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mOppService:Lcom/broadcom/bt/service/opp/IOppService;

    iget-object v2, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/opp/IOppService;->registerCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 136
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mOppEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

    return-object v0
.end method

.method private getOutputResult(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .parameter "is"

    .prologue
    .line 761
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 762
    .local v1, r:Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 763
    .local v0, b:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 765
    .local v2, s:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 766
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 769
    :catch_0
    move-exception v3

    .line 773
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 771
    :catchall_0
    move-exception v3

    throw v3
.end method


# virtual methods
.method public closeOpcSession()V
    .locals 2

    .prologue
    .line 312
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mOppService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/opp/IOppService;->closeOpcSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_0
    return-void

    .line 313
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 314
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public closeOpsSession()V
    .locals 2

    .prologue
    .line 327
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mOppService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/opp/IOppService;->closeOpsSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 329
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteMergedVcards(Ljava/lang/String;)Z
    .locals 12
    .parameter "filePathPrefix"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 663
    const/4 v7, 0x0

    .line 665
    .local v7, success:Z
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 667
    .local v1, fPrefix:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 668
    .local v4, parentDir:Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rm "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 669
    .local v5, rmCmd:Ljava/lang/String;
    const/4 v8, 0x3

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "sh"

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const-string v9, "-c"

    aput-object v9, v6, v8

    const/4 v8, 0x2

    aput-object v5, v6, v8

    .line 671
    .local v6, rmCmdArg:[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9, v4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 672
    .local v3, p:Ljava/lang/Process;
    const/4 v2, 0x0

    .line 674
    .local v2, is:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    .line 681
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-gtz v8, :cond_1

    move v7, v11

    .line 687
    :goto_0
    if-eqz v2, :cond_0

    .line 689
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 695
    :cond_0
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 700
    .end local v1           #fPrefix:Ljava/io/File;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #p:Ljava/lang/Process;
    .end local v4           #parentDir:Ljava/io/File;
    .end local v5           #rmCmd:Ljava/lang/String;
    .end local v6           #rmCmdArg:[Ljava/lang/String;
    :goto_2
    return v7

    .restart local v1       #fPrefix:Ljava/io/File;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #p:Ljava/lang/Process;
    .restart local v4       #parentDir:Ljava/io/File;
    .restart local v5       #rmCmd:Ljava/lang/String;
    .restart local v6       #rmCmdArg:[Ljava/lang/String;
    :cond_1
    move v7, v10

    .line 681
    goto :goto_0

    .line 687
    :catchall_0
    move-exception v8

    if-eqz v2, :cond_2

    .line 689
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 687
    :cond_2
    :goto_3
    :try_start_5
    throw v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 697
    .end local v1           #fPrefix:Ljava/io/File;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #p:Ljava/lang/Process;
    .end local v4           #parentDir:Ljava/io/File;
    .end local v5           #rmCmd:Ljava/lang/String;
    .end local v6           #rmCmdArg:[Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 698
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 684
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #fPrefix:Ljava/io/File;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #p:Ljava/lang/Process;
    .restart local v4       #parentDir:Ljava/io/File;
    .restart local v5       #rmCmd:Ljava/lang/String;
    .restart local v6       #rmCmdArg:[Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 687
    if-eqz v2, :cond_0

    .line 689
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 690
    :catch_2
    move-exception v8

    goto :goto_1

    :catch_3
    move-exception v9

    goto :goto_3
.end method

.method public deleteVcal(Ljava/lang/String;)Z
    .locals 7
    .parameter "filePathName"

    .prologue
    const/4 v6, 0x0

    const-string v4, ")"

    const-string v5, "BluetoothOPP"

    .line 604
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "vcs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 606
    const-string v2, "BluetoothOPP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Vcal("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 624
    :goto_0
    return v2

    .line 609
    :cond_0
    const-string v2, "BluetoothOPP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteVcal("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 612
    .local v1, target:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 613
    const-string v2, "BluetoothOPP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Vcal not present: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 616
    const-string v2, "BluetoothOPP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Vcal Deleted :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/4 v2, 0x1

    goto :goto_0

    .line 619
    :cond_2
    const-string v2, "BluetoothOPP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #target:Ljava/io/File;
    :goto_1
    move v2, v6

    .line 624
    goto :goto_0

    .line 620
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 621
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "BluetoothOPP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to delete Vcal :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Due to"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public deleteVcard(Ljava/lang/String;)Z
    .locals 7
    .parameter "filePathName"

    .prologue
    const/4 v6, 0x0

    const-string v4, ")"

    const-string v5, "BluetoothOPP"

    .line 571
    const-string/jumbo v2, "vcf"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 573
    const-string v2, "BluetoothOPP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Vcard("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 593
    :goto_0
    return v2

    .line 577
    :cond_0
    const-string v2, "BluetoothOPP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteVcard("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 580
    .local v1, target:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 581
    const-string v2, "BluetoothOPP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Vcard not present: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 585
    const-string v2, "BluetoothOPP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Vcard Deleted :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/4 v2, 0x1

    goto :goto_0

    .line 588
    :cond_2
    const-string v2, "BluetoothOPP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #target:Ljava/io/File;
    :goto_1
    move v2, v6

    .line 593
    goto :goto_0

    .line 589
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 590
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "BluetoothOPP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to delete Vcard :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Due to"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public enableOpcSession()V
    .locals 2

    .prologue
    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mOppService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/opp/IOppService;->enableOpcSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 299
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public exchangeVcard(Ljava/lang/String;)V
    .locals 2
    .parameter "peerBDAddress"

    .prologue
    .line 534
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mOppService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/opp/IOppService;->exchangeVcard(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :goto_0
    return-void

    .line 535
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 536
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 543
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 544
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 3

    .prologue
    .line 633
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mOppEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

    if-eqz v1, :cond_0

    .line 634
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mOppEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

    .line 636
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mOppService:Lcom/broadcom/bt/service/opp/IOppService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 638
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mOppService:Lcom/broadcom/bt/service/opp/IOppService;

    iget-object v2, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/opp/IOppService;->unregisterCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 642
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

    .line 643
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mOppService:Lcom/broadcom/bt/service/opp/IOppService;

    .line 645
    :cond_1
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 646
    monitor-exit p0

    return-void

    .line 639
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 640
    .local v0, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "BluetoothOPP"

    const-string v2, "Unable to unregister callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 633
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public grantAccess(IILjava/lang/String;)V
    .locals 5
    .parameter "operation"
    .parameter "access"
    .parameter "filePathName"

    .prologue
    const-string v4, ":"

    .line 454
    const-string v1, "BluetoothOPP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call grantAccess("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mOppService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1, p1, p2, p3}, Lcom/broadcom/bt/service/opp/IOppService;->grantAccess(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :goto_0
    return-void

    .line 459
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 460
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public mergeVcards(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "filePathPrefix"
    .parameter "mergedVcardFilepath"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 722
    const/4 v7, 0x0

    .line 724
    .local v7, success:Z
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 725
    .local v3, fPrefix:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 726
    .local v6, parentDir:Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cat "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, catCmd:Ljava/lang/String;
    const/4 v8, 0x3

    new-array v1, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "sh"

    aput-object v9, v1, v8

    const/4 v8, 0x1

    const-string v9, "-c"

    aput-object v9, v1, v8

    const/4 v8, 0x2

    aput-object v0, v1, v8

    .line 730
    .local v1, catCmdArg:[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9, v6}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 731
    .local v5, p:Ljava/lang/Process;
    const/4 v4, 0x0

    .line 733
    .local v4, is:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    .line 740
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-gtz v8, :cond_1

    move v7, v11

    .line 745
    :goto_0
    if-eqz v4, :cond_0

    .line 747
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 753
    :cond_0
    :goto_1
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 757
    .end local v0           #catCmd:Ljava/lang/String;
    .end local v1           #catCmdArg:[Ljava/lang/String;
    .end local v3           #fPrefix:Ljava/io/File;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #p:Ljava/lang/Process;
    .end local v6           #parentDir:Ljava/io/File;
    :goto_2
    return v7

    .restart local v0       #catCmd:Ljava/lang/String;
    .restart local v1       #catCmdArg:[Ljava/lang/String;
    .restart local v3       #fPrefix:Ljava/io/File;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #p:Ljava/lang/Process;
    .restart local v6       #parentDir:Ljava/io/File;
    :cond_1
    move v7, v10

    .line 740
    goto :goto_0

    .line 745
    :catchall_0
    move-exception v8

    if-eqz v4, :cond_2

    .line 747
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 745
    :cond_2
    :goto_3
    :try_start_5
    throw v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 754
    .end local v0           #catCmd:Ljava/lang/String;
    .end local v1           #catCmdArg:[Ljava/lang/String;
    .end local v3           #fPrefix:Ljava/io/File;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #p:Ljava/lang/Process;
    .end local v6           #parentDir:Ljava/io/File;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 755
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 742
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #catCmd:Ljava/lang/String;
    .restart local v1       #catCmdArg:[Ljava/lang/String;
    .restart local v3       #fPrefix:Ljava/io/File;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #p:Ljava/lang/Process;
    .restart local v6       #parentDir:Ljava/io/File;
    :catch_1
    move-exception v8

    .line 745
    if-eqz v4, :cond_0

    .line 747
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 748
    :catch_2
    move-exception v8

    goto :goto_1

    :catch_3
    move-exception v9

    goto :goto_3
.end method

.method public pullVcard(Ljava/lang/String;)V
    .locals 2
    .parameter "peerBDAddress"

    .prologue
    .line 516
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mOppService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/opp/IOppService;->pullVcard(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :goto_0
    return-void

    .line 517
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 518
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public pushObject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "peerBDAddress"
    .parameter "filePathName"

    .prologue
    .line 346
    const-string v1, "BluetoothOPP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call pushObject("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mOppService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/opp/IOppService;->pushObject(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 351
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerEventHandler(Lcom/broadcom/bt/service/opp/IOppEventHandler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 150
    const-string v0, "BluetoothOPP"

    const-string v1, "registerEventHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iput-object p1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mOppEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

    .line 154
    return-void
.end method

.method public requiresAccessProcessing()Z
    .locals 1

    .prologue
    .line 551
    const/4 v0, 0x1

    return v0
.end method

.method public setAccess(IZLjava/lang/Object;)V
    .locals 1
    .parameter "opCode"
    .parameter "allow"
    .parameter "name"

    .prologue
    .line 559
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {p0, p1, v0, p3}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->grantAccess(IILjava/lang/String;)V

    .line 560
    return-void

    .line 559
    .restart local p3
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setExchangeFolder(Ljava/lang/String;)V
    .locals 4
    .parameter "pathName"

    .prologue
    .line 494
    const-string v1, "BluetoothOPP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call setExchangeFolder("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mOppService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/opp/IOppService;->setExchangeFolder(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :goto_0
    return-void

    .line 498
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 499
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setOwnerVcard(Ljava/lang/String;)V
    .locals 4
    .parameter "fileName"

    .prologue
    .line 475
    const-string v1, "BluetoothOPP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call setOwnerVcard("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mOppService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/opp/IOppService;->setOwnerVcard(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :goto_0
    return-void

    .line 479
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 480
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterEventHandler()V
    .locals 3

    .prologue
    .line 165
    const-string v1, "BluetoothOPP"

    const-string/jumbo v2, "unregisterEventHandler()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mOppEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mOppService:Lcom/broadcom/bt/service/opp/IOppService;

    iget-object v2, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/opp/IOppService;->unregisterCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 172
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
