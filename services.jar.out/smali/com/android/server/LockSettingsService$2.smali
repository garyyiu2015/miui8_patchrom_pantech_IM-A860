.class Lcom/android/server/LockSettingsService$2;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Lcom/android/server/LockSettingsStorage$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/server/LockSettingsService$2;->this$0:Lcom/android/server/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x0

    .line 114
    const-string/jumbo v1, "ro.lockscreen.disable.default"

    .line 113
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 115
    .local v0, "lockScreenDisable":Z
    if-eqz v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/android/server/LockSettingsService$2;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v1}, Lcom/android/server/LockSettingsService;->-get3(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsStorage;

    move-result-object v1

    const-string/jumbo v2, "lockscreen.disabled"

    const-string/jumbo v3, "1"

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/server/LockSettingsStorage;->writeKeyValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    :cond_0
    return-void
.end method
