.class public final enum Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;
.super Ljava/lang/Enum;
.source "BehanceSDKProjectEditorSettingSearchAbstractDialog.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

.field public static final enum COMPANIES:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

.field public static final enum CO_OWNERS:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

.field public static final enum CREDITS:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

.field public static final enum TEAMS:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

.field public static final enum TOOLS:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 146
    new-instance v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    const-string/jumbo v1, "TOOLS"

    invoke-direct {v0, v1, v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;->TOOLS:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    new-instance v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    const-string/jumbo v1, "COMPANIES"

    invoke-direct {v0, v1, v3}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;->COMPANIES:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    new-instance v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    const-string/jumbo v1, "CO_OWNERS"

    invoke-direct {v0, v1, v4}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;->CO_OWNERS:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    new-instance v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    const-string/jumbo v1, "CREDITS"

    invoke-direct {v0, v1, v5}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;->CREDITS:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    new-instance v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    const-string/jumbo v1, "TEAMS"

    invoke-direct {v0, v1, v6}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;->TEAMS:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    .line 145
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    sget-object v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;->TOOLS:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;->COMPANIES:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;->CO_OWNERS:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;->CREDITS:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;->TEAMS:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;->$VALUES:[Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;
    .locals 1

    .prologue
    .line 145
    const-class v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    return-object v0
.end method

.method public static values()[Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;->$VALUES:[Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    invoke-virtual {v0}, [Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectEditorSettingSearchAbstractDialog$Type;

    return-object v0
.end method
