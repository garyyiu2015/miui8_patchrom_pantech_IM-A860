.class final Landroid/widget/RemoteViews$2;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/widget/RemoteViews;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 2919
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 2918
    invoke-virtual {p0, p1}, Landroid/widget/RemoteViews$2;->createFromParcel(Landroid/os/Parcel;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 2923
    new-array v0, p1, [Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 2922
    invoke-virtual {p0, p1}, Landroid/widget/RemoteViews$2;->newArray(I)[Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method
