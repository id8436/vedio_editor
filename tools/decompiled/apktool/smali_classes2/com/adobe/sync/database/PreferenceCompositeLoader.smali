.class public Lcom/adobe/sync/database/PreferenceCompositeLoader;
.super Lcom/adobe/sync/database/CompositeLoader;
.source "PreferenceCompositeLoader.java"


# static fields
.field private static instance:Lcom/adobe/sync/database/PreferenceCompositeLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/sync/database/PreferenceCompositeLoader;->instance:Lcom/adobe/sync/database/PreferenceCompositeLoader;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/adobe/sync/database/CompositeLoader;-><init>()V

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/adobe/sync/database/PreferenceCompositeLoader;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/adobe/sync/database/PreferenceCompositeLoader;->instance:Lcom/adobe/sync/database/PreferenceCompositeLoader;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/adobe/sync/database/PreferenceCompositeLoader;

    invoke-direct {v0}, Lcom/adobe/sync/database/PreferenceCompositeLoader;-><init>()V

    sput-object v0, Lcom/adobe/sync/database/PreferenceCompositeLoader;->instance:Lcom/adobe/sync/database/PreferenceCompositeLoader;

    .line 34
    :cond_0
    sget-object v0, Lcom/adobe/sync/database/PreferenceCompositeLoader;->instance:Lcom/adobe/sync/database/PreferenceCompositeLoader;

    return-object v0
.end method
