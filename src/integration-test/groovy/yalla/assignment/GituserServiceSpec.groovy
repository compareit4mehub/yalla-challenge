package yalla.assignment

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class GituserServiceSpec extends Specification {

    GituserServiceInterface gituserService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Gituser(...).save(flush: true, failOnError: true)
        //new Gituser(...).save(flush: true, failOnError: true)
        //Gituser gituser = new Gituser(...).save(flush: true, failOnError: true)
        //new Gituser(...).save(flush: true, failOnError: true)
        //new Gituser(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //gituser.id
    }

    void "test get"() {
        setupData()

        expect:
        gituserService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Gituser> gituserList = gituserService.list(max: 2, offset: 2)

        then:
        gituserList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        gituserService.count() == 5
    }

    void "test delete"() {
        Long gituserId = setupData()

        expect:
        gituserService.count() == 5

        when:
        gituserService.delete(gituserId)
        sessionFactory.currentSession.flush()

        then:
        gituserService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Gituser gituser = new Gituser()
        gituserService.save(gituser)

        then:
        gituser.id != null
    }
}
