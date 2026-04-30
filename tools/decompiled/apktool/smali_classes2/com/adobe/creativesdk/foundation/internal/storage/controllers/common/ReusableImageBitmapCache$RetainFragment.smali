.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$RetainFragment;
.super Landroid/support/v4/app/Fragment;
.source "ReusableImageBitmapCache.java"


# instance fields
.field private mObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 485
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$RetainFragment;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 489
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 493
    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$RetainFragment;->mObject:Ljava/lang/Object;

    .line 502
    return-void
.end method
