<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" 
    xmlns:foaf="http://xmlns.com/foaf/0.1/" 
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    exclude-result-prefixes="rdf foaf dc">
    
<xsl:output method="html" encoding="UTF-8" doctype-system="about:legacy-compat" indent="yes" />

<xsl:template match="/knowledge-graph">
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="MSc Computer Science Student at Université Jean Monnet &amp; Mines Saint-Étienne" />
    <title>Erdem Önal</title>
    
    <link rel="preconnect" href="https://cdn.jsdelivr.net" crossorigin="" />
    <script type="text/javascript">
    <![CDATA[
    (function(c,l,a,r,i,t,y){
        c[a]=c[a]||function(){(c[a].q=c[a].q||[]).push(arguments)};
        t=l.createElement(r);t.async=1;t.src="https://www.clarity.ms/tag/"+i;
        y=l.getElementsByTagName(r)[0];y.parentNode.insertBefore(t,y);
    })(window, document, "clarity", "script", "v8oeikpmrn");
    ]]>
    </script>

    <meta property="og:type" content="website" />
    <meta property="og:url" content="https://erdemonal.github.io/" />
    <meta property="og:title" content="Erdem Önal" />
    <meta property="og:description" content="MSc Computer Science Student at Université Jean Monnet &amp; Mines Saint-Étienne" />
    <meta property="og:image" content="https://erdemonal.github.io/images/research-interests.webp" />

    <link rel="stylesheet" href="styles.css" />
  </head>
    <body>
    
    <nav id="breadcrumb-nav">
        <a class="content-link" href="#" onclick="navigateTo('home'); return false;">&#171; Home</a>
    </nav>

    <div id="main-wrapper">
        <header class="header" id="0001">
            <h1>
                <span class="name-badge"><xsl:value-of select="entity[@id='0001']/foaf:name"/></span>
                <a href="#0001" class="perm-link" title="Permalink to Person Entity">#0001</a>
            </h1>
            <div class="intro">
                <xsl:copy-of select="entity[@id='0001']/bio/node()"/>
            </div>
            
            <div class="header-attribution">
                Claude Monet, <i>Impression, Sunrise</i> (1872).
            </div>
    
        </header>
    
        <div class="social-icons" id="0002">
            <span class="semantic-id-label">
                <a href="#0002" class="perm-link" title="Permalink to Contact Information">#0002</a>
            </span>
            <div class="social-list contact-block" about="https://w3id.org/people/erdemonal/me" typeof="http://xmlns.com/foaf/0.1/Person">
                <p>
                    <abbr title="World Wide Web, foaf:homepage: A homepage for some thing.">WWW</abbr>:
                    <a class="social-text-link" rel="http://xmlns.com/foaf/0.1/homepage noopener noreferrer" href="https://w3id.org/people/erdemonal" target="_blank">https://w3id.org/people/erdemonal</a>
                </p>
                <p>
                    <abbr title="Internationalized Resource Identifier, foaf:Person: A person.">IRI</abbr>:
                    <a class="social-text-link" href="https://w3id.org/people/erdemonal/me" target="_blank" rel="noopener noreferrer">https://w3id.org/people/erdemonal/me</a>
                </p>
                <p>
                    erdemonal <span class="email-accent">at</span> outlook <span class="email-accent">dot</span> fr
                </p>
            </div>
        </div>
    
        <main id="main" tabindex="-1">
          <div id="home-view">
            <div class="section" id="0003">
                <span class="semantic-id-label">
                    <a href="#0003" class="perm-link" title="Permalink to Academic Affiliation &amp; Research Interests Graph">#0003</a>
                </span>
                <figure class="research-interests">
                    <img class="research-interests-image" loading="eager" fetchpriority="high">
                        <xsl:attribute name="src"><xsl:value-of select="normalize-space(concept[@id='0003']/figure/source)"/></xsl:attribute>
                        <xsl:attribute name="alt"><xsl:value-of select="concept[@id='0003']/figure/alt"/></xsl:attribute>
                        <xsl:attribute name="title"><xsl:value-of select="concept[@id='0003']/figure/title"/></xsl:attribute>
                    </img>
                    <figcaption class="research-interests-caption">
                        <xsl:copy-of select="concept[@id='0003']/figure/caption/node()"/>
                    </figcaption>
                </figure>
            </div>
    
            <div class="section" id="0004">
                <h2>
                    Research and Projects
                    <a href="#0004" class="perm-link" title="Permalink to Projects Collection">#0004</a>
                </h2>
                <xsl:for-each select="collection[@id='0004']/item">
                    <div class="content-item" id="{@id}">
                        <xsl:choose>
                            <xsl:when test="@type='publication'">
                                <div class="project-title">
                                    <xsl:value-of select="citation/title"/>
                                    <a class="perm-link">
                                        <xsl:attribute name="href">#<xsl:value-of select="@id"/></xsl:attribute>
                                        #<xsl:value-of select="@id"/>
                                    </a>
                                </div>
                                <div class="publication-citation">
                                    <span class="citation-authors"><xsl:value-of select="citation/authors"/></span>
                                    <xsl:text> </xsl:text>
                                    <span class="citation-venue"><xsl:value-of select="citation/venue"/></span>
                                </div>
                                <div class="project-links publication-links">
                                    <xsl:for-each select="links/link">
                                        <xsl:choose>
                                            <xsl:when test="@type='doi'">
                                                <a class="content-link" target="_blank" rel="noopener noreferrer">
                                                    <xsl:attribute name="href"><xsl:value-of select="normalize-space(url)"/></xsl:attribute>
                                                    <xsl:value-of select="normalize-space(text)"/>
                                                </a>
                                            </xsl:when>
                                            <xsl:when test="@type='bibtex'">
                                                <a class="bibtex-link" target="_blank" rel="noopener noreferrer" title="BibTeX">
                                                    <xsl:attribute name="href"><xsl:value-of select="normalize-space(url)"/></xsl:attribute>
                                                    <img src="images/bibtex.png" alt="BibTeX" />
                                                </a>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:for-each>
                                </div>
                            </xsl:when>
                            <xsl:otherwise>
                                <div class="project-title">
                                    <xsl:value-of select="dc:title"/>
                                    <a class="perm-link">
                                        <xsl:attribute name="href">#<xsl:value-of select="@id"/></xsl:attribute>
                                        #<xsl:value-of select="@id"/>
                                    </a>
                                </div>
                                <div class="project-description"><xsl:copy-of select="dc:description/node()"/></div>
                                <div class="project-links">
                                    <xsl:for-each select="links/link">
                                        <a class="content-link" target="_blank" rel="noopener noreferrer">
                                            <xsl:attribute name="href"><xsl:value-of select="normalize-space(url)"/></xsl:attribute>
                                            <xsl:value-of select="normalize-space(text)"/>
                                        </a>
                                    </xsl:for-each>
                                </div>
                            </xsl:otherwise>
                        </xsl:choose>
                    </div>
                </xsl:for-each>
            </div>
          </div>
    
        </main>
    

    
    </div>

    <script>
      <![CDATA[
      if ('scrollRestoration' in history) { history.scrollRestoration = 'manual'; }

      function checkRoute() {
          const hash = window.location.hash.substring(1);
          const breadcrumb = document.getElementById('breadcrumb-nav');
          const header = document.querySelector('.header');
          const main = document.getElementById('main');
          const homeView = document.getElementById('home-view');

          header.style.display = 'block';
          main.style.display = 'block';
          breadcrumb.style.display = 'none';
          homeView.style.display = 'none';

          const allHidden = document.querySelectorAll('[style*="display: none"]');
          allHidden.forEach(el => {
              if (el !== homeView && el !== breadcrumb && el.id !== 'home-view') {
                  el.style.display = '';
              }
          });
          document.querySelectorAll('.section, .content-item, .intro, .name-badge, .social-icons, h1').forEach(el => el.style.display = '');

          document.title = 'Erdem Önal';

          if (!hash) {
              homeView.style.display = 'block';
              window.scrollTo(0, 0);
              return;
          }

          const target = document.getElementById(hash);

          breadcrumb.style.display = 'block';
          header.style.display = 'none';

          if (target) {
              if (target.id === '0001') {
                  target.style.display = 'block';
                  document.getElementById('main').style.display = 'none';

                  const socials = document.getElementById('0002');
                  if (socials) socials.style.display = 'none';
              } else {
                  document.getElementById('main').style.display = 'block';

                 
                  const socials = document.getElementById('0002');
                  if (socials && target.id !== '0002') {
                      socials.style.display = 'none';
                  }

                  let el = target;
                  while (el && el.id !== 'home-view' && el !== document.body) {
                      let parent = el.parentElement;
                      if (parent) {
                          let sibling = parent.firstElementChild;
                          while (sibling) {
                              if (sibling !== el &&
                                  sibling.tagName !== 'SCRIPT' &&
                                  sibling.tagName !== 'STYLE' &&
                                  sibling.id !== 'breadcrumb-nav' &&
                                  sibling.id !== 'main-wrapper') {
                                  sibling.style.display = 'none';
                              }
                              sibling = sibling.nextElementSibling;
                          }
                          parent.style.display = 'block';
                      }
                      el.style.display = 'block';
                      el = parent;
                  }
              }
          }
          
          window.scrollTo(0, 0);
      }

      function navigateTo(route) {
          if (route === 'home') {
              history.pushState(null, null, window.location.pathname);
              checkRoute();
          }
      }

      window.addEventListener('popstate', checkRoute);
      window.addEventListener('load', checkRoute);
      
      
      ]]>
    </script>
  </body>
</html>
</xsl:template>
</xsl:stylesheet>
