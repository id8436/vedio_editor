.class synthetic Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$9;
.super Ljava/lang/Object;
.source "DesignLibraryItemsFragment.java"


# static fields
.field static final synthetic $SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeCollaborationType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 846
    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;->values()[Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$9;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeCollaborationType:[I

    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$9;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeCollaborationType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;->ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
