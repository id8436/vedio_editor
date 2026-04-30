.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryItemMoveExtraConfiguration;
.super Ljava/lang/Object;
.source "AdobeLibraryItemMoveExtraConfiguration.java"


# static fields
.field public static final CREATE_MOVE_BUTTON_ARRAY_KEY:Ljava/lang/String; = "CREATE_MOVE_BUTTON"

.field public static final SHOULD_SHOW_ONLY_COLLECTIONS_KEY:Ljava/lang/String; = "SHOULD_SHOW_ONLY_COLLECTIONS"


# instance fields
.field private configuration:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryItemMoveExtraConfiguration;->configuration:Ljava/util/HashMap;

    .line 18
    return-void
.end method


# virtual methods
.method public getMoveButton()Z
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryItemMoveExtraConfiguration;->configuration:Ljava/util/HashMap;

    const-string/jumbo v1, "CREATE_MOVE_BUTTON"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryItemMoveExtraConfiguration;->configuration:Ljava/util/HashMap;

    const-string/jumbo v1, "CREATE_MOVE_BUTTON"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMoveButton(Z)V
    .locals 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryItemMoveExtraConfiguration;->configuration:Ljava/util/HashMap;

    const-string/jumbo v1, "CREATE_MOVE_BUTTON"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-void
.end method

.method public setShouldShowOnlyCollections(Z)V
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryItemMoveExtraConfiguration;->configuration:Ljava/util/HashMap;

    const-string/jumbo v1, "SHOULD_SHOW_ONLY_COLLECTIONS"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public shouldShowOnlyCollections()Z
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryItemMoveExtraConfiguration;->configuration:Ljava/util/HashMap;

    const-string/jumbo v1, "SHOULD_SHOW_ONLY_COLLECTIONS"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryItemMoveExtraConfiguration;->configuration:Ljava/util/HashMap;

    const-string/jumbo v1, "SHOULD_SHOW_ONLY_COLLECTIONS"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
