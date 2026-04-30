.class public Lcom/adobe/utility/analytics/TrackingUtility$SyncConstants;
.super Ljava/lang/Object;
.source "TrackingUtility.java"


# static fields
.field public static final ANALYTICSACTIONID_CLOUDSYNC:Ljava/lang/String; = "CC Sync"

.field public static final ANALYTICSKEY_SYNC_ACTION:Ljava/lang/String; = "mobile.psmix.ccsync.actionName"

.field public static final ANALYTICSKEY_SYNC_ACTION_DELETE:Ljava/lang/String; = "ccSyncActionType:delete"

.field public static final ANALYTICSKEY_SYNC_ACTION_PULL:Ljava/lang/String; = "ccSyncActionType:pull"

.field public static final ANALYTICSKEY_SYNC_ACTION_PUSH:Ljava/lang/String; = "ccSyncActionType:push"

.field public static final ANALYTICSKEY_SYNC_COMPOSITETYPE:Ljava/lang/String; = "mobile.psmix.ccsync.composite"

.field public static final ANALYTICSKEY_SYNC_COMPOSITETYPE_EXISTING:Ljava/lang/String; = "ccSyncCompositeType:existing"

.field public static final ANALYTICSKEY_SYNC_COMPOSITETYPE_NEW:Ljava/lang/String; = "ccSyncCompositeType:new"


# instance fields
.field final synthetic this$0:Lcom/adobe/utility/analytics/TrackingUtility;


# direct methods
.method public constructor <init>(Lcom/adobe/utility/analytics/TrackingUtility;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/adobe/utility/analytics/TrackingUtility$SyncConstants;->this$0:Lcom/adobe/utility/analytics/TrackingUtility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
