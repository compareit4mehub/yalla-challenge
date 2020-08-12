package yalla.assignment

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class GitUserServiceSpec extends Specification {

    GitUserService gitUserService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new GitUser(...).save(flush: true, failOnError: true)
        //new GitUser(...).save(flush: true, failOnError: true)
        //GitUser gitUser = new GitUser(...).save(flush: true, failOnError: true)
        //new GitUser(...).save(flush: true, failOnError: true)
        //new GitUser(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //gitUser.id
    }

    void "test get"() {
        setupData()

        expect:
        gitUserService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<GitUser> gitUserList = gitUserService.list(max: 2, offset: 2)

        then:
        gitUserList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        gitUserService.count() == 5
    }

    void "test delete"() {
        Long gitUserId = setupData()

        expect:
        gitUserService.count() == 5

        when:
        gitUserService.delete(gitUserId)
        sessionFactory.currentSession.flush()

        then:
        gitUserService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        GitUser gitUser = new GitUser()
        gitUserService.save(gitUser)

        then:
        gitUser.id != null
    }
}
