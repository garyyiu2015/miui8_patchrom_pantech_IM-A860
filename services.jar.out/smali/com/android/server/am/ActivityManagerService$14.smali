.class Lcom/android/server/am/ActivityManagerService$14;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$doneReceivers:Ljava/util/ArrayList;

.field final synthetic val$goingCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "val$goingCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 11951
    .local p2, "val$doneReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$14;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$14;->val$doneReceivers:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$14;->val$goingCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 11953
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$14;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 11954
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$14;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerService;->mDidUpdate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 11956
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$14;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$14;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 11957
    const v2, 0x1040403

    .line 11956
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 11958
    const/4 v2, 0x0

    .line 11956
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 11959
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$14;->val$doneReceivers:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->-wrap14(Ljava/util/ArrayList;)V

    .line 11960
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$14;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$14;->val$goingCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 11952
    return-void

    .line 11953
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
