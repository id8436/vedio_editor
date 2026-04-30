.class Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;
.super Landroid/os/AsyncTask;
.source "AdobeSendToDesktopApplication.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field application:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

.field assetFile:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

.field data:Ljava/io/InputStream;

.field filePath:Landroid/net/Uri;

.field private handler:Landroid/os/Handler;

.field imageBitmap:Landroid/graphics/Bitmap;

.field mimeType:Ljava/lang/String;

.field name:Ljava/lang/String;

.field sendCallback:Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;

.field sendCallbackHelper:Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;

.field type:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$sendItemType;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->handler:Landroid/os/Handler;

    .line 64
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->imageBitmap:Landroid/graphics/Bitmap;

    .line 65
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->name:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->application:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

    .line 67
    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->sendCallback:Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;

    .line 69
    sget-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$sendItemType;->bitmap:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$sendItemType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->type:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$sendItemType;

    .line 70
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->init()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->handler:Landroid/os/Handler;

    .line 74
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->filePath:Landroid/net/Uri;

    .line 76
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->name:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->mimeType:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->application:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

    .line 79
    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->sendCallback:Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;

    .line 81
    sget-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$sendItemType;->localFile:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$sendItemType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->type:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$sendItemType;

    .line 82
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->init()V

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->handler:Landroid/os/Handler;

    .line 86
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->assetFile:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 88
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->name:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->application:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

    .line 90
    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->sendCallback:Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;

    .line 92
    sget-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$sendItemType;->assetFile:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$sendItemType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->type:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$sendItemType;

    .line 93
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->init()V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->handler:Landroid/os/Handler;

    .line 53
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->data:Ljava/io/InputStream;

    .line 54
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->name:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->mimeType:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->application:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

    .line 57
    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->sendCallback:Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;

    .line 59
    sget-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$sendItemType;->data:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$sendItemType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->type:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$sendItemType;

    .line 60
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->init()V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 150
    sget-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$1;->$SwitchMap$com$adobe$creativesdk$foundation$sendtodesktop$AdobeSendToDesktopApplication$sendItemType:[I

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->type:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$sendItemType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$sendItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 162
    :goto_0
    return-object v4

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->data:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->mimeType:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->application:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->sendCallbackHelper:Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;

    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal;->sendData(Ljava/io/InputStream;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V

    goto :goto_0

    .line 153
    :pswitch_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->imageBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->application:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->sendCallbackHelper:Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;

    invoke-static {v0, v1, v2, v4, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal;->sendImage(Landroid/graphics/Bitmap;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V

    goto :goto_0

    .line 155
    :pswitch_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->filePath:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->mimeType:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->application:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->sendCallbackHelper:Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;

    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal;->sendLocalFile(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V

    goto :goto_0

    .line 157
    :pswitch_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->assetFile:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->application:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->sendCallbackHelper:Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;

    invoke-static {v0, v1, v4, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal;->sendAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method init()V
    .locals 1

    .prologue
    .line 113
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->handler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask$1;-><init>(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopApplication$SendToDesktopTask;->sendCallbackHelper:Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;

    .line 146
    return-void

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0
.end method
