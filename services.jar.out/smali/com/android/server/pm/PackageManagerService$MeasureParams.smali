.class Lcom/android/server/pm/PackageManagerService$MeasureParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MeasureParams"
.end annotation


# instance fields
.field private final mObserver:Landroid/content/pm/IPackageStatsObserver;

.field private final mStats:Landroid/content/pm/PackageStats;

.field private mSuccess:Z

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageStats;Landroid/content/pm/IPackageStatsObserver;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "stats"    # Landroid/content/pm/PackageStats;
    .param p3, "observer"    # Landroid/content/pm/IPackageStatsObserver;

    .prologue
    .line 10960
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 10961
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p2, Landroid/content/pm/PackageStats;->userHandle:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 10962
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mObserver:Landroid/content/pm/IPackageStatsObserver;

    .line 10963
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    .line 10960
    return-void
.end method


# virtual methods
.method handleReturnCode()V
    .locals 4

    .prologue
    .line 11012
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mObserver:Landroid/content/pm/IPackageStatsObserver;

    if-eqz v1, :cond_0

    .line 11014
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mObserver:Landroid/content/pm/IPackageStatsObserver;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mSuccess:Z

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageStatsObserver;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11011
    :cond_0
    :goto_0
    return-void

    .line 11015
    :catch_0
    move-exception v0

    .line 11016
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PackageManager"

    const-string/jumbo v2, "Observer no longer exists."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleServiceError()V
    .locals 3

    .prologue
    .line 11023
    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not measure application "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v2, v2, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11024
    const-string/jumbo v2, " external storage"

    .line 11023
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11022
    return-void
.end method

.method handleStartCopy()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 10975
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    .line 10976
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v5, v5, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget v6, v6, Landroid/content/pm/PackageStats;->userHandle:I

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    invoke-static {v3, v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->-wrap3(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILandroid/content/pm/PackageStats;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mSuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 10979
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mSuccess:Z

    if-eqz v3, :cond_0

    .line 10981
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10982
    const/4 v0, 0x1

    .line 10989
    :goto_0
    if-eqz v0, :cond_0

    .line 10990
    new-instance v2, Landroid/os/Environment$UserEnvironment;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget v3, v3, Landroid/content/pm/PackageStats;->userHandle:I

    invoke-direct {v2, v3}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 10992
    .local v2, "userEnv":Landroid/os/Environment$UserEnvironment;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get1(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    .line 10993
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v5, v5, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v5

    .line 10992
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->-wrap20(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 10995
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get1(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    .line 10996
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v5, v5, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v5

    .line 10995
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->-wrap20(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 10999
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-wide v4, v3, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-wide v6, v6, Landroid/content/pm/PackageStats;->externalCacheSize:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 11001
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get1(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    .line 11002
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v5, v5, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v5

    .line 11001
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->-wrap20(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/content/pm/PackageStats;->externalMediaSize:J

    .line 11004
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get1(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    .line 11005
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v5, v5, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v5

    .line 11004
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->-wrap20(Lcom/android/internal/app/IMediaContainerService;[Ljava/io/File;)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/content/pm/PackageStats;->externalObbSize:J

    .line 10974
    .end local v2    # "userEnv":Landroid/os/Environment$UserEnvironment;
    :cond_0
    return-void

    .line 10975
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 10984
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 10985
    .local v1, "status":Ljava/lang/String;
    const-string/jumbo v3, "mounted"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 10986
    const-string/jumbo v3, "mounted_ro"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "mounted":Z
    goto/16 :goto_0

    .line 10985
    .end local v0    # "mounted":Z
    :cond_2
    const/4 v0, 0x1

    .local v0, "mounted":Z
    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 10968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MeasureParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 10969
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 10968
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 10970
    const-string/jumbo v1, " "

    .line 10968
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 10970
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v1, v1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    .line 10968
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 10970
    const-string/jumbo v1, "}"

    .line 10968
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
