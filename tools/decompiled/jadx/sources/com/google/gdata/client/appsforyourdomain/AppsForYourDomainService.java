package com.google.gdata.client.appsforyourdomain;

import com.google.gdata.client.GoogleService;
import com.google.gdata.client.Query;
import com.google.gdata.data.DateTime;
import com.google.gdata.data.IEntry;
import com.google.gdata.data.IFeed;
import com.google.gdata.data.appsforyourdomain.AppsForYourDomainException;
import com.google.gdata.util.ServiceException;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AppsForYourDomainService extends GoogleService {
    public static final String APPS_SERVICE = "apps";
    public static final String DOMAIN_NAME = "www.google.com";
    public static final String HTTPS_PROTOCOL = "https";

    public AppsForYourDomainService(String str) {
        this(str, "https", DOMAIN_NAME);
    }

    public AppsForYourDomainService(String str, String str2, String str3) {
        super(APPS_SERVICE, str, str2, str3);
    }

    @Override // com.google.gdata.client.GoogleService, com.google.gdata.client.Service
    public <E extends IEntry> E insert(URL url, E e2) throws IOException, ServiceException {
        try {
            return (E) super.insert(url, e2);
        } catch (ServiceException e3) {
            AppsForYourDomainException appsForYourDomainExceptionNarrow = AppsForYourDomainException.narrow(e3);
            if (appsForYourDomainExceptionNarrow != null) {
                throw appsForYourDomainExceptionNarrow;
            }
            throw e3;
        }
    }

    @Override // com.google.gdata.client.Service
    public <E extends IEntry> E getEntry(URL url, Class<E> cls) throws IOException, ServiceException {
        try {
            return (E) super.getEntry(url, cls);
        } catch (ServiceException e2) {
            AppsForYourDomainException appsForYourDomainExceptionNarrow = AppsForYourDomainException.narrow(e2);
            if (appsForYourDomainExceptionNarrow != null) {
                throw appsForYourDomainExceptionNarrow;
            }
            throw e2;
        }
    }

    @Override // com.google.gdata.client.Service
    public <F extends IFeed> F getFeed(URL url, Class<F> cls) throws IOException, ServiceException {
        try {
            return (F) super.getFeed(url, cls);
        } catch (ServiceException e2) {
            AppsForYourDomainException appsForYourDomainExceptionNarrow = AppsForYourDomainException.narrow(e2);
            if (appsForYourDomainExceptionNarrow != null) {
                throw appsForYourDomainExceptionNarrow;
            }
            throw e2;
        }
    }

    @Override // com.google.gdata.client.Service
    public <F extends IFeed> F query(Query query, Class<F> cls) throws IOException, ServiceException {
        try {
            return (F) super.query(query, cls);
        } catch (ServiceException e2) {
            AppsForYourDomainException appsForYourDomainExceptionNarrow = AppsForYourDomainException.narrow(e2);
            if (appsForYourDomainExceptionNarrow != null) {
                throw appsForYourDomainExceptionNarrow;
            }
            throw e2;
        }
    }

    @Override // com.google.gdata.client.GoogleService, com.google.gdata.client.Service
    public <E extends IEntry> E update(URL url, E e2) throws IOException, ServiceException {
        try {
            return (E) super.update(url, e2);
        } catch (ServiceException e3) {
            AppsForYourDomainException appsForYourDomainExceptionNarrow = AppsForYourDomainException.narrow(e3);
            if (appsForYourDomainExceptionNarrow != null) {
                throw appsForYourDomainExceptionNarrow;
            }
            throw e3;
        }
    }

    @Override // com.google.gdata.client.GoogleService, com.google.gdata.client.Service
    public void delete(URL url) throws IOException, ServiceException {
        try {
            super.delete(url);
        } catch (ServiceException e2) {
            AppsForYourDomainException appsForYourDomainExceptionNarrow = AppsForYourDomainException.narrow(e2);
            if (appsForYourDomainExceptionNarrow == null) {
                throw e2;
            }
            throw appsForYourDomainExceptionNarrow;
        }
    }

    @Override // com.google.gdata.client.GoogleService, com.google.gdata.client.Service
    public <E extends IEntry> E getEntry(URL url, Class<E> cls, DateTime dateTime) throws IOException, ServiceException {
        try {
            return (E) super.getEntry(url, cls);
        } catch (ServiceException e2) {
            AppsForYourDomainException appsForYourDomainExceptionNarrow = AppsForYourDomainException.narrow(e2);
            if (appsForYourDomainExceptionNarrow != null) {
                throw appsForYourDomainExceptionNarrow;
            }
            throw e2;
        }
    }

    @Override // com.google.gdata.client.GoogleService, com.google.gdata.client.Service
    public <F extends IFeed> F getFeed(URL url, Class<F> cls, DateTime dateTime) throws IOException, ServiceException {
        try {
            return (F) super.getFeed(url, cls);
        } catch (ServiceException e2) {
            AppsForYourDomainException appsForYourDomainExceptionNarrow = AppsForYourDomainException.narrow(e2);
            if (appsForYourDomainExceptionNarrow != null) {
                throw appsForYourDomainExceptionNarrow;
            }
            throw e2;
        }
    }

    protected <E extends IEntry, F extends IFeed> List<E> getAllPages(URL url, Class<F> cls) throws IOException, ServiceException {
        ArrayList arrayList = new ArrayList();
        while (true) {
            try {
                IFeed feed = getFeed(url, cls);
                arrayList.addAll(feed.getEntries());
                URL url2 = feed.getNextLink() == null ? null : new URL(feed.getNextLink().getHref());
                if (url2 == null) {
                    return arrayList;
                }
                url = url2;
            } catch (ServiceException e2) {
                AppsForYourDomainException appsForYourDomainExceptionNarrow = AppsForYourDomainException.narrow(e2);
                if (appsForYourDomainExceptionNarrow != null) {
                    throw appsForYourDomainExceptionNarrow;
                }
                throw e2;
            }
        }
    }
}
